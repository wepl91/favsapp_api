# == Schema Information
#
# Table name: notifications
#
#  id          :integer          not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  service_id  :integer
#  accepted    :boolean
#  pending     :boolean          default(TRUE)
#

class Notification < ApplicationRecord
  belongs_to :service
  belongs_to :user
end
