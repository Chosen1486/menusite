class AddDistrictToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :district, :integer
  end
end
