ActiveAdmin.register Like do
  permit_params :user_id, :tweet_id  
  menu false
  belongs_to :user
end
