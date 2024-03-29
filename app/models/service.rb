# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  description :text
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  comment     :string
#  user_id     :integer
#

class Service < ApplicationRecord
  belongs_to :category
  belongs_to :user

  has_many :notifications
end
