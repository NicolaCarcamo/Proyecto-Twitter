class Tweet < ApplicationRecord
    before_save :default_values
    has_many :likes, dependent: :destroy
    has_many :rtweets, dependent: :destroy
    belongs_to :user
    has_and_belongs_to_many :tags

    validates :content, presence: true


    after_create do
        tweet = Tweet.find_by(id: self.id)
        hashtags = self.content.scan(/#\w+/)
        hashtags.map do |hashtag|
            tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
            tweet.tags << tag
        end
    end

    def default_values
        self.rt ||= 0 if self.rt.nil?
    end

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
        rtweets.count
    end

    def publicationdate
        if (Time.current - created_at) / 1.minutes < 60
            ((Time.current - created_at) / 1.minutes).to_i     
        else
            ((Time.current - created_at) / 1.hours).to_i     
        end
    end

    def rtcontent
        content
    end

end
