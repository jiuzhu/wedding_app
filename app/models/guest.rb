class Guest < ActiveRecord::Base

	validates :email, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true

	has_many :rsvps
	has_many :memberships
	has_many :groups, through: :memberships

	def full_name
		"#{first_name} #{last_name}"
	end

end
