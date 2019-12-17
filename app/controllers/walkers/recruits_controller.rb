class Walkers::RecruitsController < ApplicationController
  def index
    @recruits = Recruit.all
    @walker = current_walker
  end

  def show
    @recruit = Recruit.find(params[:id])
    # @walker = Walker.find(params[:id])
    @room = Room.new
  end
  
  def status
    @recruit = Recruit.find(params[:id])
    
    if @recruit.Walker_recruits(current_walker).flag == 0
      @recruit.walker_recruits.update_attributes(flag: 1)
    elsif @recruit.walker_recruits(current_walker).flag == 1
      @recruit.walker_recruits.update_attributes(flag: 0)
    # elsif @recruit.status == 1
    #   @recruit.update(status: 0)
    end
  end

end
