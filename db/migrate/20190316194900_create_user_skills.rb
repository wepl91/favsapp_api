class CreateUserSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :user_skills do |t|

      t.timestamps
    end
  end
end
