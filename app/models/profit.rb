class Profit < ApplicationRecord
  belongs_to :day
  validates :location, presence: true
  validates_length_of :location, maximum: 50
  validates :amount, numericality: {greater_than: 0}
  validates :dozens_bought, numericality: {greater_than: 0}
end
