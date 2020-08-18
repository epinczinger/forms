class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, confirmation: true, length: { within: 6..40 }, on: :create
  validates :password, presence: true, confirmation: true, length: { within: 6..40 }, on: :update
end
