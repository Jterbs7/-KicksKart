class Offer < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :sneaker, dependent: :destroy
  enum status: { pending: 0, accepted: 1, declined: 2 }
end
