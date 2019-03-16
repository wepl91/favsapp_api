class UpdateDescriptionService < ActiveRecord::Migration[5.1]
  change_column :services, :description, :text
  def change
  end
end
