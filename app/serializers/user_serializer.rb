class UserSerializer < ActiveModel::Serializer
    attributes :id, :email, :name, :profilepicture
end