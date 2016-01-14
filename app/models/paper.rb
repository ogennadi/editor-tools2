class Paper < ActiveRecord::Base
  after_initialize :init

  def init
    update(status: :under_review)
  end

  def export_collection
    clientid, token = File.readlines('config/accesstoken').map(&:strip)
    export_path = Rails.root.join "public/exports/#{DateTime.now.to_i}-#{id}"
    output = shell "bin/export-collection #{bioparts_url} -c #{clientid} \
                                                          -t #{token} \
                                                          -o #{export_path}"


    if $? == 0
      return output
    else
      return false
    end
  end

  def publish
    update(status: :published)
  end

  def reject
    update(status: :rejected)
  end

private
  def shell(command)
    puts command
    `#{command}`
  end
end
