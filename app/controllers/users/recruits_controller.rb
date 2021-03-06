class Users::RecruitsController < ApplicationController

  before_action :authenticate_user!
  
  def new
    @recruit = Recruit.new
    @user = current_user
    @now = Time.current
    @partners = Partner.where(user_id: @user)
    @walkers = Walker.all
  end

  def create
    @now = Time.current
    @recruit = Recruit.new(recruits_params)
    @recruit.user_id = current_user.id
    # @recruit.partner_id.valid?
    # if @recruit.offer_date >=  Time.current && @recruit.start_time < @recruit.finish_time
    if @recruit.save
      flash[:notice] = '募集を投稿できました!!'
      redirect_to users_user_path(current_user.id)
    else
      @user = current_user
      prefecture = Prefectures
      @recruit = Recruit.new(recruits_params)
      @partners = Partner.where(user_id: @user)
      # flash.now[:notice] = '日付または、時間に誤りがあります。'
      render 'new'
    end
  end

  def show
    @user = current_user
    #応募者を表示させて、選べるようにする
    @recruit = Recruit.find(params[:id])
  end

  def confirm
    walker_recruit = WalkerRecruit.find(params[:id])
    walker_recruit.update_attributes(flag: 1)
    recruit = Recruit.find(walker_recruit.recruit_id)
    recruit.update_attributes(walker_id: walker_recruit.walker_id, status: 1)
    redirect_to users_user_path(current_user)
  end

  def edit
    @recruit = Recruit.find(params[:id])
    @user = current_user
    @now = Time.current
    @partners = Partner.where(user_id: @user)
    # @walkers = Walker.all
  end

  def update
    recruit = Recruit.find(params[:id])
    recruit.update(recruits_params)
    redirect_to users_user_path(recruit)
  end

  def destroy
    recruit = Recruit.find(params[:id])
    recruit.destroy
    redirect_to users_user_path
  end

  private
  def recruits_params
      params.require(:recruit).permit( :walker_id, :partner_id, :offer_date, :start_time, :finish_time, :text, :status)
  end

end
