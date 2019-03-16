class UpdateUsersAttributes < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :hackoint, :integer, :default => 1000
  end
end
