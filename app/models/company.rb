class Company < ActiveRecord::Base
	has_and_belongs_to_many :accounts
	validates :name, presence: true, length: { maximum: 50 }
	validates :teaser, presence: true, length: { maximum: 180 }
	has_one :address, as: :addressable
	#addressable because polymorphic (can be used by multiple models)
	
	has_one :mission
	has_one :reason
	has_many :uploads
	accepts_nested_attributes_for :address

	has_attached_file :logo,
                  url: "/assets/companies/:id/:style/:basename.:extension",
                  path: ":rails_root/public/assets/companies/:id/:style/:basename.:extension"

	validates_attachment_presence :logo
	validates_attachment_size :logo, less_than: 3.megabytes
	validates_attachment_content_type :logo, content_type: ['image/jpeg', 'image/png']

end

