class History < ApplicationRecord
	has_many :users
	has_many :mail_items
end
