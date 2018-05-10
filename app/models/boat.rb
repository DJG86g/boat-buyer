class Boat < ApplicationRecord
  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :hours, presence: true
  validates :number_of_engines, presence: true
  validates :engine_size, presence: true
  validates :length_of_boat, presence: true
  # belongs_to :marina
   belongs_to :user
end
