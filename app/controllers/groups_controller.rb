class GroupsController < ApplicationController

  def index
    @groups = Group.where(user_id: current_user.id)
  end

  def show
    @group = Group.find_by(id: params[:id])
  end

  def new
  end

  def create
    @group = Group.new
    @group.name = params[:name]
    @group.user_id = current_user.id

    if @group.save
      redirect_to groups_url, notice: "Group created successfully."
    else
      render 'new'
    end
  end

  def edit
    @group = Group.find_by(id: params[:id])
  end

  def update
    @group = Group.find_by(id: params[:id])
    @group.name = params[:name]

    if @group.save
      redirect_to groups_url, notice: "Group updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @group = Group.find_by(id: params[:id])
    @group.destroy

    redirect_to groups_url, notice: "Group deleted."
  end
end
