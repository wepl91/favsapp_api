class DeleteTables < ActiveRecord::Migration[5.1]
  def change
    def up
      drop_table :skills_users
      drop_table :user_skills
    end
  
    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end
end
