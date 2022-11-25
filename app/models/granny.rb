class Granny < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :image_url, presence: true
  validates :description, presence: true
  validates :lullaby_skill, presence: true
  validates :storytelling_skill, presence: true
  validates :baking_skill, presence: true
  validates :availability, presence: true
  validates :price_per_day, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_age,
    against: [:first_name, :last_name, :age],
    using: {
      tsearch: { prefix: true }
    }
end
