class RtweetsController < ApplicationController
    def create
        @rtweet = Rtweet.create(rtweet_params)
        redirect_back(fallback_location: '/')
    end

    private

    def rtweet_params
        params.permit(:tweet_id)        
    end
end
