require 'spec_helper'
require 'database_cleaner/active_record'

RSpec.describe Music do
  describe '#create' do
    context 'ulid生成' do
      it '成功' do
        music = build(:music)
        music.save
        expect(music.id).to match(/\A[0-9A-HJKMNP-TV-Z]{26}\z/)
      end
    end
  end
end
