class Location < ApplicationRecord
	has_many :mail_items, foreign_key: :mail_item_id
	validates :id, presence: true, uniqueness: true
	validates :mail_item_id, presence: true
end
