class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :state
      t.string :street_name
      t.integer :street_number

      t.timestamps
    end
  end
end
