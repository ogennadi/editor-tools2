class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :manuscript_id
      t.string :author
      t.string :status
      t.string :paragon_plus_url
      t.string :reviewer_email1
      t.string :reviewer_email2
      t.string :reviewer_email3

      t.timestamps null: false
    end
  end
end
