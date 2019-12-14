class Users::UsersController < ApplicationController
  def show
    @recruits = Recruit.where(user_id: current_user.id)
    @user = current_user
  end

  def change
  end
end
