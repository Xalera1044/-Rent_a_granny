class Granny < ApplicationRecord
  belongs_to :user
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
end
