class Tweet < ApplicationRecord
    has_many :likes, dependent: :destroy
    belongs_to :user

    validates :content, presence: true

    def photourl
        user.profilepicture
    end

    def username
        user.name
    end
    
    def likecount
        likes.count
    end

    def retweetcount
        likes.count
    end

    def publicationdate
        if (Time.current - created_at) / 1.minutes < 60
            ((Time.current - created_at) / 1.minutes).to_i     
        else
            ((Time.current - created_at) / 1.hours).to_i     
        end
    end
end
