class CreateBeverages < ActiveRecord::Migration[6.1]
  def change
    create_table :beverages do |t|
      t.string :producer_name
      t.string :proprietary_name
      t.string :category
      t.integer :vintage
      t.string :image_url
      t.integer :bin
      
    end
  end
end
