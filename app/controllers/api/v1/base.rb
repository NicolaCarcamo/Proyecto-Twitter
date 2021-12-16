module API
    module V1
      class Base < Grape::API
        mount API::V1::News
        mount API::V1::Dates
        mount API::V1::Createtweet
      end
    end
end