class Offer < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :sneaker, dependent: :destroy
end
