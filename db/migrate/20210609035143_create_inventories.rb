class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.integer :user_id
      t.integer :beverage_id
      t.timestamps
    end
  end
end
