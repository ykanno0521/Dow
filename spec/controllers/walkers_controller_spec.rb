require 'rails_helper'

RSpec.describe WalkersController, type: :controller do
  describe 'Walker一覧ページ' do
    context "Walker一覧ページが正しく表示される" do
      before do
        get :index
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
    end
  end
end