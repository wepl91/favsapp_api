# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  description :text
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Service < ApplicationRecord
end
