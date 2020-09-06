class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :username, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true
end
