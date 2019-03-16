class AssociationSkillCategories < ActiveRecord::Migration[5.1]
  def change
    add_reference :categories, :skill, index: true
  end
end
