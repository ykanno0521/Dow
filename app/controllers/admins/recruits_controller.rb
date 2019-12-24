class Admins::RecruitsController < ApplicationController
  def index
    @recruits = Recruit.all
  end

  def show
    @recruit = Recruit.find(params[:id])
  end

  def destroy
  end
end
