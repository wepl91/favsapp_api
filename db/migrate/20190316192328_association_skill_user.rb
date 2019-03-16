class AssociationSkillUser < ActiveRecord::Migration[5.1]
  def change
    def change
      create_table :skills_users, id: false do |t|
        t.references :user, index: true, foreign_key: true
        t.references :skill, index: true, foreign_key: true
      end
    end
  end
end
