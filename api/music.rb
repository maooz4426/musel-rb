module Musel
  class API
    resource :music do
      desc 'Get all music records'
      get do
        Music.all
      end

      desc 'Create a new music record'
      post do
        music_params = {
          title: params[:title],
          artist: params[:artist],
          bpm: params[:bpm]
        }
        @music = Music.new(music_params)
        if @music.save
          status 201
          @music.to_json
        else
          status 422
          { errors: @music.errors.full_messages }.to_json
        end
      end
    end
  end
end
