class Music < ActiveRecord::Base
  include UlidPrimaryKey

  self.table_name = "music"
  validates :title, presence: true
  validates :artist, presence: true
  validates :bpm, presence: true
end
