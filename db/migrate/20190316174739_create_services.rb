class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
