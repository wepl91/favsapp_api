class AssociationServiceCategory < ActiveRecord::Migration[5.1]
  def change
    add_reference :services, :category, index: true
  end
end
