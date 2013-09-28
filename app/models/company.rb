class Company < ActiveRecord::Base
	has_and_belongs_to_many :accounts
	validates :name, presence: true
	validates :teaser, presence: true, length: { maximum: 500 }
end
