class Upload < ActiveRecord::Base
	belongs_to :company

	has_attached_file :photo
end
