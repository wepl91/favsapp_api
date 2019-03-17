class AssociationServiceUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :services, :user, index: true
  end
end
