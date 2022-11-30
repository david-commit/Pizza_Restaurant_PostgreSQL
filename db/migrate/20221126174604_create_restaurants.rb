class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      # t.integer :pizza_id
      t.timestamps
    end
  end
end
