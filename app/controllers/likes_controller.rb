class LikesController < ApplicationController
    def create
        @like = Like.create(like_params)
        redirect_back(fallback_location: '/')
    end

    def destroy
        @like.destroy
        redirect_back(fallback_location: '/')
    end

    private

    def like_params
        params.permit(:tweet_id, :user_id)        
    end
end
