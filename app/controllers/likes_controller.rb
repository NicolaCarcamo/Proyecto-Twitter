class LikesController < ApplicationController
    def create
        @like = Like.new(like_params)
        @like.user = current_user
    end

    def like_params
        params.permit(:tweet_id, :user_id)        
    end
end
