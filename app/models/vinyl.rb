class Vinyl < ApplicationRecord
  belongs_to :user
  has_many :rentals
  validates :user_id, presence: true
  validates :album, presence: true

  include PgSearch
  pg_search_scope :search_by_album_artist_and_genre,
    against: [ :album, :artist,:genre ],
    using: {
      tsearch: { prefix: true }
    }
end
