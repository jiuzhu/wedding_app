class HomepageController < ApplicationController

	def onetime
	
	@user = User.find_by(id: current_user.id)

	end


	def index

		@user = User.find_by(id: current_user.id)
	
		if not @user.first_name && @user.last_name && @user.wedding_date
			redirect_to onetime_url
		end
	

		require 'date'
		today = Date.today

		if @user.wedding_date 
			@numDaysLeft = @user.wedding_date - today
		else
			@numDaysLeft = 'Unknown'
		end

		allGuests = Guest.where(user_id: current_user.id)
		
		@numGuests = Array(allGuests).size * 2


		rsvps = Rsvp.where(user_id: current_user.id)

		@numYes = 0
		@numNo = 0
		@numTotal = 0

		if rsvps
		rsvps.each do |rsvp|
			@numTotal += 2

			if rsvp.num_guests >= 0
				@numYes += rsvp.num_guests
			else
				@numNo += 2
			end
		end
		end
				
		@numPending = @numGuests - @numTotal

	end




end
