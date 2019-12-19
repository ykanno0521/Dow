class Users::ReviewsController < ApplicationController

  def new
    @review = Review.new
    @recruit = Recruit.find(params[:recruit_id])
  end

  def create
    # ストロングパラメーターを使用
     @review = Review.new(review_params)
     @recruit = Recruit.find(params[:recruit_id])
    # DBへ保存する
     @review.save
    # トップ画面へリダイレクト
    redirect_to users_user_path(current_user)
end
private

def review_params
    params.require(:review).permit(:recruit_id, :title, :content, :satisfaction )
end
end
