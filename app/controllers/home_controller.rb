class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @tweets = Tweet.page(params[:page])
    @tweet = Tweet.new
  end
end
