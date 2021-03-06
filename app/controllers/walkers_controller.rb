class WalkersController < ApplicationController

  def index
    @q = Walker.all.ransack(params[:q])
    @walkers = @q.result(distinct: true).page(params[:page]).per(8)
    # @walkers = Walker.all.page(params[:page]).per(8)
    # @recruits = []
    # @walkers.each do |w|
    #   # @recruits = Recruit.where(walker_id: w.id)
    #   recruit = Recruit.where(walker_id: w.id)
    #   @recruits << recruit if recruit.present?
    # end
    # @reviews = []
    # @satisfaction = []
    # @recruits.each do |r|
    #   @satisfaction << Review.where(recruit_id: r.id).satisfaction
    # end
    # if @satisfaction.present?
    # @satisfaction.sum # 合計
    # @satisfaction.length # 要素個数
    # @satisfaction_average = @satisfaction.sum / @satisfaction.length # 平均
    # end
  end

  def show
    @walker = Walker.find(params[:id])
    @recruits = Recruit.where(walker_id: @walker.id)
    @reviews = []
    @recruits.each do |r|
      @reviews << r.review if r.review.present?
    end
    @satisfaction = []
    @recruits.each do |r|
      @satisfaction << r.review.satisfaction if r.review.present?
    end
    if @satisfaction.present?
      @satisfaction.sum # 合計
      @satisfaction.length # 要素個数
      @satisfaction_average = @satisfaction.sum / @satisfaction.length # 平均
    else
    end
  end

end
