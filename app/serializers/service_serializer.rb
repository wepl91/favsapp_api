class ServiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :comment, :price
  
  attributes :category_name do |object|
    object.category.name
  end

  attributes :skill_name do |object|
    object.category.skill.name
  end

  attributes :user_name do |object|
    "#{object.user.name} #{object.user.last_name}"
  end

  attributes :user_id do |object|
    object.user.id
  end

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
