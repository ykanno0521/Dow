class Admins::WalkersController < ApplicationController
  def edit
    @prefecture = Prefectures
    @walker = Walker.find(params[:id])
  end
  
  def update
    walker = Walker.find(params[:id])
    walker.delete_flag = 1 if params[:delete_button]
    walker.update(walker_params)
    redirect_to walker_path(walker.id)
  end

  private
  def walker_params
      params.require(:walker).permit(:image, :last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :prefecture, :city, :block, :building, :phone_number, :email, :nickname)
  end
end
