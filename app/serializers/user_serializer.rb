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
