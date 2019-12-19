class RoomsController < ApplicationController

  def index
    if user_signed_in?
      @user = current_user
      @rooms = @user.rooms
      # @room = Room.where(user_id: current_user.id)
      # @message = Message.where(user_id: current_user.id)
      # @rooms = @user.recruits.includes(rooms: :messages).map(&:rooms)
    elsif walker_signed_in?
      @walker = current_walker
      @room = Room.where(walker_id: current_walker.id)
      @message = Message.where(walker_id: current_walker.id)
    end
  end

  def create
    room = Room.new(room_params)
    room.save
    redirect_to room_path(room.id)
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
    @message = Message.new
    @user = current_user
    @walker = current_walker
  end

  private
  def room_params
      params.require(:room).permit(:walker_id, :recruit_id)
  end
end
