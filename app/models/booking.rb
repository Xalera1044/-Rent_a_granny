class Booking < ApplicationRecord
  belongs_to :granny
  belongs_to :user
  # validates :created_at
end
