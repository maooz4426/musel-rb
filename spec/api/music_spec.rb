require 'airborne'
require 'spec_helper'
require 'database_cleaner/active_record'

describe 'Music' do
  describe 'GET /api/music' do
    before do
      create :music
      get '/api/music'
    end

    it 'returns music list' do
      expect(last_response.status).to eq 200
      json = JSON.parse(last_response.body)
      first_music = json.first
      expect(first_music['title']).to eq('Test Music')
      expect(first_music['artist']).to eq('Test Artist')
      expect(first_music['bpm']).to eq(120)
    end
  end
end
