module API
  module V1
    class News < Grape::API
      include API::V1::Defaults

        resource :news do
          desc "Obtener últimos 50 tweets"
          get "" do
            Tweet.last(50)
        end
      end
    end
  end
end