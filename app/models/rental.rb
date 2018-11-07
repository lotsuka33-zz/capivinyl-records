class Rental < ApplicationRecord
  belongs_to :vinyl
  belongs_to :user
  has_one :owner, through: :vinyl, class_name: 'User', source: :user
  validates :user_id, presence: true
  validates :vinyl_id, presence: true
end

# has_many :transactions
# has_many :lendings, through: :vinyls, class_name: 'Transaction', source: :transactions
