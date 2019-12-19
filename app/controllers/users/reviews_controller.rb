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

  def edit
    @review = Review.find(params[:recruit_id])
  end

  def update
    review = Review.find(params[:recruit_id])
    if review.update(review_params)
      redirect_to users_user_path
    else
      render :edit
    end
  end

  def destroy
    review = Review.find(params[:recruit_id])
    review.destroy
    redirect_to users_user_path
  end
private

def review_params
    params.require(:review).permit(:recruit_id, :title, :content, :satisfaction )
end
end
