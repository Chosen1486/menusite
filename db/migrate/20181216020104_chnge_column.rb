class ChngeColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :restaurants, :district, :string
  end
end
