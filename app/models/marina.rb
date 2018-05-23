class Marina < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true
  validates :gas_dock, presence: true
  validates :public_launch, presence: true
  validates :public_restroom, presence: true
  validates :max_boat_size, presence: true
  has_many :boats
  has_many :users, through: :boats
end
