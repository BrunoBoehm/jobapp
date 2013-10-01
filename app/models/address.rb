class Address < ActiveRecord::Base
	acts_as_gmappable
	
	belongs_to :addressable, polymorphic: true
	validates :country, presence: true
	validates :city, presence: true
	validates :zip, presence: true
	validates :street, presence: true

	def gmaps4rails_address
	#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
	  "#{self.street}, #{self.city}, #{self.country}" 
	end
end
