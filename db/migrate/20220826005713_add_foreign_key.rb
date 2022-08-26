class AddForeignKey < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :beach_list_id, :integer
  end
end
