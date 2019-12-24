class Admins::UsersController < ApplicationController

  def index
    @users = User.where(delete_flag: 0)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @prefecture = Prefectures
    @user = User.find(params[:id])
    
  end

  def update
    user = User.find(params[:id])
    user.delete_flag = 1 if params[:delete_button]
    user.update(user_params)
    redirect_to admins_user_path(user.id)
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:image, :last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :prefecture, :city, :block, :building, :phone_number, :email, :nickname )
  end

end
