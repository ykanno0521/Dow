class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
  # ストロングパラメーターを使用
  contact = Contact.new(contact_params)
  # DBへ保存する
    if contact.save
    # トップ画面へリダイレクト
    flash[:success] = '問い合わせが送信されました!!'
    redirect_to '/'
    else
      flash.now[:alert] = '問い合わせ内容を入力してください。'
      render :new
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:title, :content, :user_id, :walker_id)
  end

end
