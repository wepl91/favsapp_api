class ServiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :comment, :price
  
  attributes :category do |object|
    object.category
  end

  attributes :skill do |object|
    object.category.skill
  end

  attributes :user do |object|
    object.user
  end
end
