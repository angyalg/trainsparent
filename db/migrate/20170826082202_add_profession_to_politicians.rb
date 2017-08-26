class AddProfessionToPoliticians < ActiveRecord::Migration[5.1]
  def change
    add_column :politicians, :profession, :string
  end
end
