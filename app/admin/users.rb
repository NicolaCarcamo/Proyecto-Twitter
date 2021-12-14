ActiveAdmin.register User do 
  permit_params :name, :email, :profilepicture

  index do
    selectable_column
    column :email
    column "Nombre", :name
    column "Avatar", :profilepicture
    column "Tweets hechos", :id do |tweeted|
      tweeted.tweets.where(user_id: User.ids).count
    end
    column "Likes dados", :id do |liked|
      liked.likes.where(user_id: User.ids).count
    end
    actions
  end

end
