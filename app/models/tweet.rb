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

    def publicacion
        created_at.strftime("%Y-%h-%d %R") #hito 7
    end
end
