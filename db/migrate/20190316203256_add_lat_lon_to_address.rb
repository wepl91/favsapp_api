class AddLatLonToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :lat, :string
    add_column :addresses, :lon, :string
  end
end
