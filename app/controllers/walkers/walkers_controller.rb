class Walkers::WalkersController < ApplicationController
  def index
    @walker = current_walker
    @recruits = Recruit.where(walker_id: @walker.id)
  end

  def show
  end
end
