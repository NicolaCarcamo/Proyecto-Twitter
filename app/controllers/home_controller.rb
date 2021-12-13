class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @tweets = Tweet.page(params[:page])
    @tweet = Tweet.new
    @likes = Like.all
    if current_user
      @friends = Friend.where(user_id: current_user.id)
    end
  end
end
