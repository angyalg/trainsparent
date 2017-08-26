class AddPictureToPoliticians < ActiveRecord::Migration[5.1]
  def change
    add_column :politicians, :picture, :string
  end
end
