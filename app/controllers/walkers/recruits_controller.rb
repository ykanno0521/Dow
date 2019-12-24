class Walkers::RecruitsController < ApplicationController

  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]
  
  def index
    @recruits = Recruit.all
    @walker = current_walker
  end

  def show
    @recruit = Recruit.find(params[:id])
    # @walker = Walker.find(params[:id])
    @room = Room.new
    @walker_recruit = @recruit.walker_recruits.find_by(walker_id: current_walker.id)
  end
  
  def switch
    @recruit = Recruit.find(params[:id])
    @recruit_swich = @recruit.walker_recruits.find_by(walker_id: current_walker.id)
    if @recruit_switch.present?
      @recruit_switch.destory
    elsif
      @recruit_switch.create(switch_params)
    end
  end

  def create
    @recruit = Recruit.find(params[:recruit_id])
    walker = Walker.find(params[:walker_id])
    WalkerRecruit.create(recruit_id: @recruit.id, walker_id: walker.id)
    @room = Room.new
    @walker_recruit = @recruit.walker_recruits.find_by(walker_id: current_walker.id)
    render 'show'
  end

  def destroy
    walker_recruit = WalkerRecruit.find(params[:id])
    @recruit = walker_recruit.recruit
    walker_recruit.destroy
    @room = Room.new
    @walker_recruit = @recruit.walker_recruits.find_by(walker_id: current_walker.id)
    render 'show'
  end

end
