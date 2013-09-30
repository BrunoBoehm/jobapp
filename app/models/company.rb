class Company < ActiveRecord::Base
	has_and_belongs_to_many :accounts
	validates :name, presence: true, length: { maximum: 50 }
	validates :teaser, presence: true, length: { maximum: 180 }
	has_one :address, as: :addressable
	#addressable because polymorphic (can be used by multiple models)
	
	has_one :mission
	has_one :reason
	accepts_nested_attributes_for :address
end
