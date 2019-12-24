class Walkers::WalkersController < ApplicationController
  def show
    @walker = current_walker
    @recruits = Recruit.where(walker_id: @walker.id)
    # @walker_recruit = WalkerRecruit.where(id: @walker.id)
  end

  def change
    walker = current_walker
    walker.update(delete_flag: 1)
    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
    redirect_to walkers_unsubscribe_complete_path
  end
end
