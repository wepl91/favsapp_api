# == Schema Information
#
# Table name: user_skills
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill
end
