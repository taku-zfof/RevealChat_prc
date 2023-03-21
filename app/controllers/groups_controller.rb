class GroupsController < ApplicationController
  def index
    @groups=Group.all

  end

  def edit
  end

  def new
    @group=Group.new
  end

  def show
    @group=Group.find(params[:id])
    @users=@group.users
    @message=Message.new
    @messages=@group.messages.all
  end

  def update
  end

  def create
    @group=Group.new(group_params)
    @group.save
    redirect_to root_path
  end

  def destroy
  end

   private

  def group_params
    params.require(:group).permit(:name)
  end

end
