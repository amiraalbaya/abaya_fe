class ArrivedQatar < ApplicationRecord
	belongs_to :user
	has_many :mail_items
end
