class AddForeignKey2 < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :mountain_list_id, :integer
  end
end
