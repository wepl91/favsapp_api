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
#  lat           :string
#  lon           :string
#  city          :string
#  user_id       :integer
#

class Address < ApplicationRecord
  acts_as_mappable
  belongs_to :user
  include Geokit::Geocoders

  before_save :set_lan_lot, on: [:create, :update]

  def set_lan_lot
    address_line = "#{self.street_name} #{self.street_number}, #{self.city}, #{self.state}, #{self.country}"
    coords = Geokit::Geocoders::OSMGeocoder.geocode(address_line)
    if coords      
      self.lon = coords.lng
      self.lat = coords.lat
      
      binding.pry
      
    end
  end
end
