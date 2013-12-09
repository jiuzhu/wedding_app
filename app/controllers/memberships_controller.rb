class MembershipsController < ApplicationController

  def index
    @memberships = Membership.where(user_id: current_user.id).order(:group_id)
  end

  def show
    @membership = Membership.find_by(id: params[:id])
  end

  def new
    @groups = Group.where(user_id: current_user.id)
    @guests = Guest.where(user_id: current_user.id)
  end

  def create
    @membership = Membership.new
    @membership.guest_id = params[:guest_id]
    @membership.group_id = params[:group_id]
    @membership.user_id = current_user.id

    if @membership.save
      redirect_to memberships_url, notice: "Membership created successfully."
    else
      render 'new'
    end
  end

  def edit
    @membership = Membership.find_by(id: params[:id])
  end

  def update
    @membership = Membership.find_by(id: params[:id])
    @membership.guest_id = params[:guest_id]
    @membership.group_id = params[:group_id]

    if @membership.save
      redirect_to memberships_url, notice: "Membership updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @membership = Membership.find_by(id: params[:id])
    @membership.destroy

    redirect_to memberships_url, notice: "Membership deleted."
  end
end
