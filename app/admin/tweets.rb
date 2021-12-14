ActiveAdmin.register Tweet do
  permit_params :content, :user_id
  belongs_to :user
  menu false
end
