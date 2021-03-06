class UserInfo < ActiveRecord::Base
  validates :password, presence: true
  validates_confirmation_of :password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
      uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 8 }

end
