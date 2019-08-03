class User < ApplicationRecord
  before_save { email.downcase! }
  validates :fname, presence: true, length: { maximum: 24 }
  validates :lname, presence: true, length: { maximum: 24 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
              format: { with: VALID_EMAIL_REGEX },
              uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 8 }
  validates :role, presence: true
end
