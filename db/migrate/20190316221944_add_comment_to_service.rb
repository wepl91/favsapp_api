class AddCommentToService < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :comment, :string
  end
end
