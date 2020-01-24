require 'rails_helper'

describe 'パートナー機能', type: :system do
  describe '一覧表示機能' do
    before do
      # 'test1@gmail.com'を作成しておく
      user_a = FactoryBot.create(:user, nickname: 'ユーザA', email: 'test1@gamil.com', password: 'password' )
      # 作成者が'test1@gmail.com'のパートナーを作成しておく
      FactoryBot.create(:partner, name: '犬', user: user_a )
    end
    context 'test1@gmail.comがログインしているとき' do
      before do
        # 'test1@gmail.com'でログインする
        visit new_user_session_path
        fill_in 'email', with: 'test1@gmail.com'
        fill_in 'password', with: 'password'
        click_button 'Log in'
      end
      it 'test1@gmail.comが作成したパートナーが表示される' do
      # 作成済みのパートナーの名称が画面上に表示されていることを確認
      expect(page).to have_content '犬'
      end
    end
  end
end