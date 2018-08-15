class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :equipment

  validates :starts_at, presence: true
  validates :ends_at, presence: true
end
