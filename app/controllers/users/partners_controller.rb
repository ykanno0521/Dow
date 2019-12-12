class Users::PartnersController < ApplicationController
  before_action :authenticate_user!

  def index
    p current_user
    @partners = Partner.where(user_id: current_user.id)
  end

  def new
    @partner = Partner.new
    @dog_breed = Dog_breeds
    @gender = Gender
  end

  def create
    @partner = Partner.new(partner_params)
    @partner.user_id = current_user.id
    if @partner.save
      redirect_to users_partners_path
    else
      render 'new'
    end
  end

  def edit
    @partner = Partner.find(params[:id])
    @dog_breed = Dog_breeds
  end

  def update
    @partner = Partner.find(params[:id])
    @partner.update(partner_params)
    redirect_to users_partners_path
  end

  def destroy
  end

  private
  def partner_params
      params.require(:partner).permit(:image, :user_id, :name, :dog_breed, :birthday, :gender, :weight , :character)
  end

end
