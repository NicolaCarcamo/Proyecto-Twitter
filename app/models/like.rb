class Like < ApplicationRecord
    belongs_to :tweet
    belongs_to :user

    def photo
        user.profilepicture
    end
end
