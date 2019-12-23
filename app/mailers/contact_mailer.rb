class ContactMailer < ApplicationMailer

  #user用
  def send_when_admin_reply(destination, contact) #メソッドに対して引数を設定
    @destination = destination  #ユーザー情報
    @answer = contact.reply #返信内容
    mail to: @destination[:email], subject: '【サイト名】 お問い合わせありがとうございます'
  end
  
end
