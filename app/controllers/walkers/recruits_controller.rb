class Walkers::RecruitsController < ApplicationController
  def index
    @recruits = Recruit.all
  end

  def show
    @recruit = Recruit.find(params[:id])
    
      
  end
  
  def status
    @recruit = Recruit.find(params[:id])
    if @recruit.status == 0
      @recruit.update(status: 1)
    elsif @recruit.status == 1
      @recruit.update(status: 0)
    end
  end

end
