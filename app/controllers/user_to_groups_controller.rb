class UserToGroupsController < ApplicationController
  
  def create
    @bridge=UserToGroup.new(user_id: current_user.id,group_id: params[:id])
    @bridge.save
    
  redirect_to root_path
  end
  
end
