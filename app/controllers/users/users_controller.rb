class Users::UsersController < ApplicationController

  #ログインユーザのみアクセスを許可する
  before_action :authenticate_user! #deviceのヘルパーメソッド

  #deviceの使わない時は自分で定義する
  # before_action :login_required

  def show
    @user = current_user
    @recruits = Recruit.where(user_id: @user.id).order(offer_date: :desc)
  end

  def change
    user = current_user
    user.update(delete_flag: 1)
    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
    redirect_to users_unsubscribe_complete_path
  end


end
