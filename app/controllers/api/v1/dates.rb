module API
    module V1
      class Dates < Grape::API
        include API::V1::Defaults
        
        namespace '/:fecha1' do
          params do
            requires :created_at, type: Date, desc: "Primera fecha"
          end

            desc "Tweets entre ambas fechas"
              params do
                requires :created_at, type: Date, desc: "Segunda fecha"
              end
              get ":fecha2" do
                Tweet.where('created_at > ? AND created_at < ?', permitted_params[:fecha1], permitted_params[:fecha2])
              end
        end
      end
    end
end