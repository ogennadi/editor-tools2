class AddBiopartsUrlToPapers < ActiveRecord::Migration
  def change
    add_column :papers, :bioparts_url, :string
  end
end
