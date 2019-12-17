class Users::UsersController < ApplicationController
  def show
    @user = current_user
    @recruits = Recruit.where(user_id: @user.id)
  end

  def change
  end
end
