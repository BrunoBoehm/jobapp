class Reason < ActiveRecord::Base
	belongs_to :company
	validates :why1, presence: true, length: {maximum: 180}
	validates :why2, presence: true, length: {maximum: 180}
	validates :why3, presence: true, length: {maximum: 180}
end
