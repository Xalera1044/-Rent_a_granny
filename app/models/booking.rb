class Booking < ApplicationRecord
  belongs_to :grannies
  belongs_to :users
end
