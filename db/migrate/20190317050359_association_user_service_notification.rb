class AssociationUserServiceNotification < ActiveRecord::Migration[5.1]
  def change
    add_reference :notifications, :user, index: true
    add_reference :notifications, :service, index: true
  end
end
