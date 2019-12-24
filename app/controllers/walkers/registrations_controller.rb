# frozen_string_literal: true

class Walkers::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  def new
    @walker = Walker.new
    @prefecture = Prefectures
  end

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  def edit
    @prefecture = Prefectures
    super
  end

  # PUT /resource
  def update
    @prefecture = Prefectures
    super
  end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  #protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:image, :last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :prefecture, :city, :block, :building, :phone_number, :nickname, :area1, :area2, :area3, :delete_flag, :introduction])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:image, :last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :prefecture, :city, :block, :building, :phone_number, :nickname, :area1, :area2, :area3, :delete_flag, :introduction])
  end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  def unsubscribe
    @walker = current_walker
  end

  def complete
  end


end
