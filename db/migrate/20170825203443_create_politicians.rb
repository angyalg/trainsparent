class CreatePoliticians < ActiveRecord::Migration[5.1]
  def change
    create_table :politicians do |t|
      t.string :name
      t.string :ministry
      t.string :photo_url

      t.timestamps
    end
  end
end
