class FriendsController < ApplicationController
    before_action :find_user, only: [:destroy]
    before_action :find_friend, only: [:destroy]

    def friendlist
        @users = User.all
        @friends = Friend.all
    end
    
    def create
        @friend = Friend.create(friend_params)
        redirect_to friendlist_path
    end

    def destroy
        @friend.destroy
        redirect_to friendlist_path
    end

    private

    def find_user
        @user= User.find(params[:friend_id])
    end

    def find_friend
        @friend = Friend.find_by(friend_id: @user.id, user_id: current_user.id)
     end

    def friend_params
        params.permit(:friend_id, :user_id)        
    end
end
