ActiveAdmin.register Friend do
  permit_params :user_id, :friend_id
  menu false
  belongs_to :user
end
