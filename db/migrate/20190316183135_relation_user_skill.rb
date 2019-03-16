class RelationUserSkill < ActiveRecord::Migration[5.1]
  def change
    create_table :user_skills, id: false do |t|
      t.references :user, index: true, foreign_key: true
      t.references :skill, index: true, foreign_key: true
    end
  end
end
