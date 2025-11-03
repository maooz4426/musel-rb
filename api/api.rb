module Musel
  class API < Grape::API
    format :json

    helpers do
      params :music do
        group :music, type: Hash do
          requires :id,    type: String, allow_blank: false
          requires :title, type: String, allow_blank: false
          requires :artist,    type: String, allow_blank: false
          requires :bpm, type: Integer, allow_blank: false
        end
      end
    end
  end
end
