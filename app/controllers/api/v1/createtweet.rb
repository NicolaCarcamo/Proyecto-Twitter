module API
    module V1
      class Createtweet < Grape::API
        include API::V1::Defaults
  
          resource :createtweet do
            desc "Crear un tweet"
            params do
                requires :content
            end
            post "" do
              Tweet.create(content: params[:content], user_id: current_user)
          end
        end
      end
    end
  end