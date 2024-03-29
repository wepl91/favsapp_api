# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  skill_id   :integer
#

class Category < ApplicationRecord
  belongs_to :skill
  has_many :services
end
