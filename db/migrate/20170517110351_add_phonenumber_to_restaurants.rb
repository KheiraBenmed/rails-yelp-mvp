class AddPhonenumberToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :phonenumber, :integer
  end
end
