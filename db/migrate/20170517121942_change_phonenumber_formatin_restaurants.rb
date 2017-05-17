class ChangePhonenumberFormatinRestaurants < ActiveRecord::Migration[5.0]
  def change
    change_column :restaurants, :phonenumber, :string
  end
end
