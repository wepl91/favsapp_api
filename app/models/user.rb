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
  validates_presence_of :email, :password_digest
  validates :email, uniqueness: true

  #encrypt password
  has_secure_password
  has_many :user_skills 
  has_many :services
  has_many :notifications
  has_and_belongs_to_many :skills
  has_one :address

  def services_by_skill
    results = Hash.new;
    self.services.each do |service|
      unless results.keys.include?(service.category.skill.name)
        results[service.category.skill.name] = [service] 
      end
      unless results[service.category.skill.name].include?(service) 
        results[service.category.skill.name] << service
      end
    end
    results
  end
end
