class Vinyl < ApplicationRecord
  belongs_to :user
  has_many :rentals
  validates :user_id, presence: true
  validates :album, presence: true
end
