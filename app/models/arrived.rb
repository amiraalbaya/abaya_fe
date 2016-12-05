class Arrived < ApplicationRecord
	## this file represents the table arrived in pittsburgh.
	belongs_to :user
	has_many :mail_items
	validates :id, presence: true, uniqueness: true
end
