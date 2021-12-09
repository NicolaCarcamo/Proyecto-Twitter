class LikesController < ApplicationController
    before_action :find_tweet, only: [:destroy]
    before_action :find_like, only: [:destroy]

    def create
        @like = Like.create(like_params)
        redirect_to root_path
    end

    def destroy
        @like.destroy
        redirect_to root_path
    end

    private

    def find_tweet
        @tweet= Tweet.find(params[:tweet_id])
    end

    def find_like
        @like = Like.where(tweet_id: :tweet_id)
     end

    def like_params
        params.permit(:tweet_id, :user_id)        
    end
end
