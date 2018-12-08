class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :tel
      t.string :address
      t.text :description
    end
  end
end
