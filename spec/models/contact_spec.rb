require 'rails_helper'
RSpec.describe Contact, type: :model do
    
    context "データが正しく保存される" do
        before do
            @contact = Contact.new
            @contact.title = "サイトについて"
            @contact.content = "このサイトの利用方法を教えてください。"
            @contact.save
        end
        it "全て入力・文字制限をクリアしてあるので保存される" do
            expect(@contact).to be_valid
        end
    end
end