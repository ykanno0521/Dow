class WalkersController < ApplicationController
  def index
    @walkers = Walker.page(params[:page]).per(10)
  end

  def show
    @walker = Walker.find(params[:id])
  end

end
