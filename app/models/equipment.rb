class Equipment < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader

  validates :category, presence: true
  validates :brand, presence: true
  validates :product_name, presence: true
  validates :size, presence: true
  validates :location, presence: true
  validates :price_per_day, presence: true
  validates :photo, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
