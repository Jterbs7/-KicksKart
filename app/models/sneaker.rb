class Sneaker < ApplicationRecord
  belongs_to :user
  has_many :offers, dependent: :destroy
  has_one_attached :photo

  enum status: { available: 0, sold: 1 }
end
