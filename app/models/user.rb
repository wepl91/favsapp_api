# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  last_name       :string
#  phone           :string
#  hackoint        :integer          default(1000)
#

class User < ApplicationRecord
  #Validations
  validates_presence_of :name, :email, :password_digest
  validates :email, uniqueness: true

  #encrypt password
  has_secure_password
end
