class Users::RecruitsController < ApplicationController

  def new
    @recruit = Recruit.new
    @user = current_user
    @now = Time.current
    @partners = Partner.where(user_id: @user)
    @walkers = Walker.all
  end

  def create
    @recruit = Recruit.new(recruits_params)
    @recruit.user_id = current_user.id
    if @recruit.save!
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destory
  end

  private
  def recruits_params
      params.require(:recruit).permit( :walker_id, :partner_id, :offer_date, :start_time, :finish_time, :text, :status)
  end

end
