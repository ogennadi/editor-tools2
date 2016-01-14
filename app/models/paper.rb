class Paper < ActiveRecord::Base
  after_initialize :init

  def init
    update(status: :under_review)
  end

  def export_collection
  end

  def publish
    update(status: :published)
  end

  def reject
    update(status: :rejected)
  end
end
