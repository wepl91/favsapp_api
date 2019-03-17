class NotificationAttributes < ActiveRecord::Migration[5.1]
  def change
    add_column :notifications, :accepted, :boolean
    add_column :notifications, :pending, :boolean, :default => true
  end
end
