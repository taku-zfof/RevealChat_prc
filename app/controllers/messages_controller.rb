class MessagesController < ApplicationController

  def create
    @message=Message.new(message_params)
    @message.save
    redirect_to request.referer
  end

   private

  def message_params
    params.require(:message).permit(:content,:user_id,:group_id)
  end

end
