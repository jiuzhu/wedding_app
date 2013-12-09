class GuestsController < ApplicationController

  def index
    @guests = Guest.where(user_id: current_user.id)
  end

  def show
    @guest = Guest.find_by(id: params[:id])
  end

  def new
  
  end

  def create
    @guest = Guest.new
    @guest.first_name = params[:first_name]
    @guest.last_name = params[:last_name]
    @guest.email = params[:email]
    @guest.address_1 = params[:address_1]
    @guest.address_2 = params[:address_2]
    @guest.city = params[:city]
    @guest.state = params[:state]
    @guest.zip = params[:zip]
    @guest.user_id = current_user.id

    if @guest.save
      redirect_to guests_url, notice: "Guest created successfully."
    else
      render 'new'
    end
  end

  def edit
    @guest = Guest.find_by(id: params[:id])
  end

  def update
    @guest = Guest.find_by(id: params[:id])
    @guest.first_name = params[:first_name]
    @guest.last_name = params[:last_name]
    @guest.email = params[:email]
    @guest.address_1 = params[:address_1]
    @guest.address_2 = params[:address_2]
    @guest.city = params[:city]
    @guest.state = params[:state]
    @guest.zip = params[:zip]

    if @guest.save
      redirect_to guests_url, notice: "Guest updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @guest = Guest.find_by(id: params[:id])
    @guest.destroy

    redirect_to guests_url, notice: "Guest deleted."
  end

  def foodselection
    @guests = Guest.where(user_id: current_user.id)
  end

end

def us_states
  [
    ['AK', 'AK'],
    ['AL', 'AL'],
    ['AR', 'AR'],
    ['AZ', 'AZ'],
    ['CA', 'CA'],
    ['CO', 'CO'],
    ['CT', 'CT'],
    ['DC', 'DC'],
    ['DE', 'DE'],
    ['FL', 'FL'],
    ['GA', 'GA'],
    ['HI', 'HI'],
    ['IA', 'IA'],
    ['ID', 'ID'],
    ['IL', 'IL'],
    ['IN', 'IN'],
    ['KS', 'KS'],
    ['KY', 'KY'],
    ['LA', 'LA'],
    ['MA', 'MA'],
    ['MD', 'MD'],
    ['ME', 'ME'],
    ['MI', 'MI'],
    ['MN', 'MN'],
    ['MO', 'MO'],
    ['MS', 'MS'],
    ['MT', 'MT'],
    ['NC', 'NC'],
    ['ND', 'ND'],
    ['NE', 'NE'],
    ['NH', 'NH'],
    ['NJ', 'NJ'],
    ['NM', 'NM'],
    ['NV', 'NV'],
    ['NY', 'NY'],
    ['OH', 'OH'],
    ['OK', 'OK'],
    ['OR', 'OR'],
    ['PA', 'PA'],
    ['RI', 'RI'],
    ['SC', 'SC'],
    ['SD', 'SD'],
    ['TN', 'TN'],
    ['TX', 'TX'],
    ['UT', 'UT'],
    ['VA', 'VA'],
    ['VT', 'VT'],
    ['WA', 'WA'],
    ['WI', 'WI'],
    ['WV', 'WV'],
    ['WY', 'WY']
  ]
end
