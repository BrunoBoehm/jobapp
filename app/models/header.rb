class Header < ActiveRecord::Base
	belongs_to :company


	has_attached_file :image, styles: { carousel: "1150x450#" },
              url: "/assets/companies/:id/:style/:basename.:extension",
              path: ":rails_root/public/assets/companies/:id/:style/:basename.:extension"

	validates_attachment_presence :image
	validates_attachment_size :image, less_than: 4.megabytes
	validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/png']
end
