class AddPhotourlToPolitician < ActiveRecord::Migration[5.1]
  def change
    add_column :politicians, :photo_url, :string
  end
end
