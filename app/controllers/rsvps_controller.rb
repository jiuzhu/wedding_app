class RsvpsController < ApplicationController
  skip_before_filter :authenticate_user!, :except => [:index, :show, :new, :edit, :update, :destroy]


  def index
    @rsvps = Rsvp.where(user_id: current_user.id)
  end

  def show
    @rsvp = Rsvp.find_by(id: params[:id])
  end

  def new
   @guests = Guest.where(user_id: current_user.id)
  end

  def create
    @rsvp = Rsvp.new
    @rsvp.guest_id = params[:guest_id]
    @rsvp.your_food_preference = params[:your_food_preference]
    @rsvp.guest_food_preference = params[:guest_food_preference]
    @rsvp.num_guests = params[:num_guests]
    @rsvp.user_id = current_user.id

    if @rsvp.save
      redirect_to rsvps_url, notice: "Rsvp saved!"
    else
      @guests = Guest.where(user_id: current_user.id)
      render 'new'
    end
  end

  def edit
    @rsvp = Rsvp.find_by(id: params[:id])
  end

  def update
    @rsvp = Rsvp.find_by(id: params[:id])
    @rsvp.guest_id = params[:guest_id]
    @rsvp.your_food_preference = params[:your_food_preference]
    @rsvp.guest_food_preference = params[:guest_food_preference]
    @rsvp.num_guests = params[:num_guests]

    if @rsvp.save
      redirect_to rsvps_url, notice: "Rsvp updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @rsvp = Rsvp.find_by(id: params[:id])
    @rsvp.destroy

    redirect_to rsvps_url, notice: "Rsvp deleted."
  end

  def thanks
  
  end

  def rsvpguest
    @guest = Guest.find_by(id: params[:id])
    if not @guest
      redirect_to root_url
    end
  end

  def guestcreate
    @guest = Guest.find_by(id: params[:guest_id])

    @rsvp = Rsvp.new
    @rsvp.guest_id = params[:guest_id]
    @rsvp.your_food_preference = params[:your_food_preference]
    @rsvp.guest_food_preference = params[:guest_food_preference]
    @rsvp.num_guests = params[:num_guests]
    @rsvp.user_id = @guest.user_id

    if @rsvp.save
      redirect_to rsvp_thankyou_url, notice: "Thanks for your RSVP! We look forward to seeing you soon!"
    else
      render 'new'
    end
  end

end

  def food_options
  [
    ['No Choice',''],
    ['Chicken','Chicken'],
    ['Beef','Beef'],
    ['Fish','Fish'],
    ['Vegetarian','Vegetarian']
  ]
end