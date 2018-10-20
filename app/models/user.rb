class User < ApplicationRecord
  has_many :mangak
  validates :name,  presence: true, length: {maximum: 25}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 50},
    format: {with: VALID_EMAIL_REGEX},uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}

  private

  def downcase_email
    email.downcase!
  end
end
