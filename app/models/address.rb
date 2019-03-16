# == Schema Information
#
# Table name: addresses
#
#  id            :integer          not null, primary key
#  country       :string
#  state         :string
#  street_name   :string
#  street_number :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Address < ApplicationRecord
end
