class Location < ApplicationRecord
	has_many :mail_items
	validates :id, presence: true, uniqueness: true
	validates :mail_item_id, presence: true
end
