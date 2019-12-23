class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
  # ストロングパラメーターを使用
  contact = Contact.new(contact_params)
  # DBへ保存する
  contact.save
  # トップ画面へリダイレクト
  redirect_to '/'
  end

  private
  def contact_params
    params.require(:contact).permit(:title, :content, :user_id, :walker_id)
  end

end
