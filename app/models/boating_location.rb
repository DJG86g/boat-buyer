class BoatingLocation < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :gas_dock, presence: true
  validates :public_launch, presence: true
  validates :public_restroom, presence: true
  belongs_to :user
end
