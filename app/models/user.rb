class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Equipment user owns
  has_many :equipments
  has_many :bookings
  # Equipment user rents
  has_many :rented_equipments, through: :bookings, source: :equipment
end
