class GroupsController < ApplicationController
  def index
    @groups=Group.all
  end

  def edit
  end

  def new
  end

  def show
    group=Group.find(params[:id])
    @messages=group.message.all
  end
  
  def create
  end
  
  def destroy
  end
  
end
