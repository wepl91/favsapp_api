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

class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id

  attributes :full_name do |object|
    "#{object.name} #{object.last_name}"
  end

  attributes :address do |object|
    object.address
  end

  attributes :services do |object|
    object.services_by_skill
  end
end
