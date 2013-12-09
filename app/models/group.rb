class Group < ActiveRecord::Base
	validates :name, presence: true

	has_many :memberships
	has_many :guests, through: :memberships
end
