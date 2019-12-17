class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    message.save!
    redirect_to room_path(message.room_id)
  end

  def message_params
    params.require(:message).permit(:content, :room_id, :walker_id, :user_id)
end
end
