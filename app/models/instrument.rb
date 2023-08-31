class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  acts_as_favoritable

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?


  CATEGORIES = ['guitar', 'bass', 'strings', 'keys']
end
