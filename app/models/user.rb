class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  has_secure_password
  validates :password, presence: true
  validates :phone, numericality: { only_integer: true }

  has_many :site1
  has_many :site2
  has_many :site3
  has_many :site4
  has_many :site5
  # , length: { minimum: 6 }
end
