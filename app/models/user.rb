class User < ApplicationRecord
  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	has_many :mail_items
  	validates :first_name, presence: true
  	validates :last_name, presence: true
  	validates :id, presence: true, uniqueness: true
  	validates :andrew_id, presence: true
  	validates :username, presence: true
  	validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  	before_save { self.email = email.downcase }
  	validates :password, length: { minimum: 6 },:on => :create
  	has_secure_password
end
