class Moderator < ApplicationRecord
  has_secure_password

  has_many :posts

  validates :fullname, presence: true
  validates :username, presence: true, format: {with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i, message: 'is not valid email address'}
  validates :password, presence: true
end
