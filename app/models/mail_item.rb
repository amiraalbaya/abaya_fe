class MailItem < ApplicationRecord
	belongs_to :user
	has_one :location
	validates :id, presence: true, uniqueness: true
	validates :user_id, presence: true
end
