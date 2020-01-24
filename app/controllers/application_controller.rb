class ApplicationController < ActionController::Base
  
  def set_current_user
    @current_user = User.find_by(id:  session[:user_id])
  end

  def set_current_walker
    @current_walker = walker.find_by(id:  session[:walker_id])
  end

  def authenticate_user_walker
    if @current_user == nil || @current_walker == nil
    redirect_to("/")
    end
  end



  Prefectures = ["北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県","茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県","新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県","静岡県","愛知県","三重県","滋賀県","京都府","大阪府","兵庫県","奈良県","和歌山県","鳥取県","島根県","岡山県","広島県","山口県","徳島県","香川県","愛媛県","高知県","福岡県","佐賀県","長崎県","熊本県","大分県","宮崎県","鹿児島県","沖縄県"]

  
  Dog_breeds = ["その他","アーフェンピンシャー","アイリッシュウルフハウンド",	"アイリッシュセッター",	"アイリッシュテリア",	"アイリッシュレッドアンドホワイトセター",	"秋田犬",	"アナトリアンシェパード",	"アフガンハウンド",	"アメリカンアキタ(グレートジャパニーズドッグ)",	"アメリカンウォータースパニエル",	"アメリカンエスキモードッグ",	"アメリカンコッカースパニエル",	"アメリカンスタッフォードシャーテリア",	"アラスカンマラミュート",	"イタリアングレーハウンド",	"イビザンハウンド",	"イングリッシュコッカースパニエル",	"イングリッシュスプリンガースパニエル",	"イングリッシュセッター",	"イングリッシュポインター",	"イングリッシュマスティフ",	"ウィペット",	"ウエストハイランドホワイトテリア",	"ウェルシュコーギーカーディガン",	"ウェルシュコーギーペンブローク（コーギー）",	"ウェルシュシープドッグ",	"ウェルシュテリア",	"ウェルシュスプリンガースパニエル",	"エアデールテリア",	"エストレラマウンテンドッグ",	"オーストラリアンキャトルドッグ",	"オーストラリアンシェパード",	"オーストラリアンシルキーテリア",	"オーストラリアンテリア",	"オールドイングリッシュシープドッグ",	"カーリーコーテッドレトリーバー",	"甲斐犬",	"カレリアンベアドッグ",	"キースボンド",	"紀州犬",	"キャバチワ",	"キャバプー",	"キャバリアキングチャールズスパニエル",	"キングチャールズスパニエル",	"クーバース",	"クランバースパニエル",	"グレイハウンド",	"グレートデン",	"グレートピレニーズ",	"クロアチアンシープドッグ",	"クロムフォルレンダー",	"ケアンテリア",	"ケリーブルーテリア",	"コーイケルホンディエ",	"コーギー",	"ゴードンセッター",	"ゴールデンレトリバー",	"コッカークス",	"コッカプー",	"コトン・ド・テュレアール",	"コモンドール",	"サーロスウルフドッグ",	"サモエド",	"サルーキ",	"シーズー",	"シープー",	"シーポメ",	"シーリハムテリア",	"シェットランドシープドッグ",	"シェパード",	"柴犬",	"シベリアンハスキー",	"シャーペイ",	"ジャーマンシェパード",	"ジャーマンショートヘアードポインター",	"ジャーマンスパニエル",	"ジャーマンハンティングテリア",	"ジャーマンピンシャー",	"ジャーマンワイアーヘアードポインター",	"ジャイアントシュナウザー",	"ジャックラッセルテリア",	"シュナウザー",	"シュナプー",	"シュナマル",	"スカイテリア",	"スキッパーキ",	"スコティッシュテリア",	"スタッフォードシャーブルテリア",	"スタンダードプードル",	"スパニッシュマスティフ",	"セントバーナード",	"ソフトコーテッド・ウィートン・テリア",	"ダップー",	"ダルメシアン",	"チベタンスパニエル",	"チベタンテリア",	"チベタンマスティフ",	"チャイニーズクレステッドドッグ",	"チャウチャウ",	"チワックス",	"チワパグ",	"チワピン",	"チワズー",	"チワピン",	"チワプー",	"チワブル",	"チワマル",	"チワワ",	"狆",	"ティーカッププードル",	"トイプードル",	"トイマンチェスターテリア",	"ドーベルマン",	"ドゴアルヘンティーノ",	"土佐犬・四国犬",	"土佐闘犬",	"ナポリタンマスティフ",	"日本スピッツ",	"日本テリア",	"ニューファンドランド",	"ノーフォークテリア",	"ノーリッチテリア",	"パーソンラッセルテリア",	"バーニーズマウンテンドッグ",	"パグ",	"パグズー",	"バセットハウンド",	"バセンジー",	"ハバニーズ",	"パピキー",	"パピチワ",	"パピヨン",	"ハリア",	"ビーグル",	"ビアデッドコリー",	"ビションフリーゼ",	"ピットブル",	"ピンプー",	"プーリー",	"ファラオハウンド",	"プチバセットグリフォンバンデーン",	"プチブラバンソン",	"フラットコーテッドレトリバー",	"ブラッドハウンド",	"ブリタニースパニエル",	"ブリュッセルグリフォン",	"ブルドック",	"ブルマスティフ",	"フレンチブルドッグ",	"ペキックス",	"ペキチー",	"ペキニーズ",	"ペキプー",	"ベドリントンテリア",	"ベルジアングリフォン",	"ベルジアングローネンダール",	"ベルジアンタービュレン",	"ベルジアンマリノア",	"ボーダーコリー",	"ボーダーテリア",	"ポーチュギーズウォータードッグ",	"ボクサー",	"ボストンテリア",	"北海道犬",	"ポメキー",	"ポメ柴",	"ポメチワ",	"ポメックス",	"ポメパグ",	"ポメプー",	"ポメヨン",	"ポメラニアン",	"ポメ柴",	"ポリッシュローランドシープドッグ",	"ボルゾイ",	"ボロニーズ",	"ホワイトシェパード",	"ポンスキー",	"マスティフ",	"豆柴",	"マルーキー",	"マルシーズ",	"マルチーズ",	"マルックス",	"マルパピ",	"マルプー",	"ミニチュアシュナウザー",	"ミニチュアダックスフンド",	"ミニチュアピンシャー",	"ミニチュアブルテリア",	"ヨークシャーテリア",	"ヨーチー",	"ラサアプソ",	"ラフコリー",	"ラブラドールレトリバー",	"レークランドテリア",	"レオンベルガー",	"ロットワイラー",	"ワイマラナー",	"ワイヤーフォックステリア"]
  
  
  Gender = ["オス", "メス"]

  private
  def login_required
    redirect_to root_path, notice:'ログインしてください' unless current_user 
  end
  
end

