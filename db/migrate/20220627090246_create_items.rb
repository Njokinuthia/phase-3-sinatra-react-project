class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :category
      t.string :image_url
      t.string :condition
      t.integer :price
      t.string :details
      t.integer :seller_id
    end
  end
end
