class CreateBeachLists < ActiveRecord::Migration[6.1]
  def change
    create_table :beach_lists do |t|
      t.string :name
      t.string :category
  end
end
end
