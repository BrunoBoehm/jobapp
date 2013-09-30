class Mission < ActiveRecord::Base
	belongs_to :company
	validates :statement, presence: true, length: {maximum: 180}
	validates :impact, presence: true, length: {maximum: 180}
end
