# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  [
    {
      image_id: "",
      last_name: "山田",
      first_name: "一郎",
      last_name_kana: "ヤマダ",
      first_name_kana: "イチロウ",
      postcode: "1111111",
      prefecture: "北海道",
      city: "テスト市",
      block: "テスト1-2-3",
      building: "テスト荘",
      phone_number: "09012345678",
      email: "yamada123@gmail.com",
      password:  "yamada123",
      nickname: "やまちゃん",
      delete_flag: "0"
    },
    {
      image_id: "",
      last_name: "田中",
      first_name: "一郎",
      last_name_kana: "タナカ",
      first_name_kana: "イチロウ",
      postcode: "1112222",
      prefecture: "北海道",
      city: "テスト市",
      block: "テスト2-2-2",
      building: "テスト荘",
      phone_number: "09022222222",
      email: "tanaka123@gmail.com",
      password:  "tanaka123",
      nickname: "たなちゃん",
      delete_flag: "0"
    },
    {
      image_id: "",
      last_name: "DMM",
      first_name: "テスト",
      last_name_kana: "タナカ",
      first_name_kana: "イチロウ",
      postcode: "1112222",
      prefecture: "北海道",
      city: "テスト市",
      block: "テスト2-2-2",
      building: "テスト荘",
      phone_number: "09022222222",
      email: "test123@gmail.com",
      password:  "test123",
      nickname: "DMM",
      delete_flag: "0"
    }
  ]
)

Walker.create!(
  [
    {
      image_id: "",
      last_name: "鈴木",
      first_name: "一郎",
      last_name_kana: "スズキ",
      first_name_kana: "イチロウ",
      postcode: "1113333",
      prefecture: "北海道",
      city: "根室市",
      block: "光陽町3-3-3",
      building: "根室荘",
      phone_number: "09033333333",
      email: "suzuki123@gmail.com",
      password:  "suzuki123",
      nickname: "すずちゃん",
      area1: "北海道",
      area2: "東京都",
      area3: "大阪府",
      delete_flag: "0",
      introduction: "よろしくお願いします。"
    },
    {
      image_id: "",
      last_name: "佐藤",
      first_name: "一郎",
      last_name_kana: "サトウ",
      first_name_kana: "イチロウ",
      postcode: "1114444",
      prefecture: "北海道",
      city: "根室市",
      block: "西浜町4-4-4",
      building: "西浜荘",
      phone_number: "09022222222",
      email: "satou123@gmail.com",
      password:  "satou123",
      nickname: "さとちゃん",
      area1: "神奈川県",
      area2: "新潟県",
      area3: "京都府",
      delete_flag: "0",
      introduction: "よろしくお願いします。"
    },
    {
      image_id: "",
      last_name: "田村",
      first_name: "一郎",
      last_name_kana: "田村",
      first_name_kana: "イチロウ",
      postcode: "1114444",
      prefecture: "神奈川県",
      city: "横浜市",
      block: "鶴見4-4-4",
      building: "鶴見荘",
      phone_number: "09022222222",
      email: "tamura123@gmail.com",
      password:  "tamura123",
      nickname: "たむらちゃん",
      area1: "神奈川県",
      area2: "新潟県",
      area3: "",
      delete_flag: "0",
      introduction: "よろしくお願いします。"
    },
    {
      image_id: "",
      last_name: "山本",
      first_name: "一郎",
      last_name_kana: "山本",
      first_name_kana: "イチロウ",
      postcode: "1114444",
      prefecture: "東京",
      city: "台東区",
      block: "台東4-4-4",
      building: "台東レジデンス",
      phone_number: "09022222222",
      email: "yamamoto123@gmail.com",
      password:  "yamamoto123",
      nickname: "やまやま",
      area1: "神奈川県",
      area2: "新潟県",
      area3: "",
      delete_flag: "0",
      introduction: "犬大好きです。。"
    },
    {
      image_id: "",
      last_name: "山本",
      first_name: "二郎",
      last_name_kana: "山本",
      first_name_kana: "二郎",
      postcode: "1114444",
      prefecture: "北海道",
      city: "函館市",
      block: "函館4-4-4",
      building: "函館荘",
      phone_number: "09022222222",
      email: "yamamoto222@gmail.com",
      password:  "yamamoto222",
      nickname: "やまじろう",
      area1: "神奈川県",
      area2: "",
      area3: "",
      delete_flag: "0",
      introduction: "犬大好きです。。"
    },
    {
      image_id: "",
      last_name: "山本",
      first_name: "三郎",
      last_name_kana: "山本",
      first_name_kana: "三郎",
      postcode: "1114444",
      prefecture: "北海道",
      city: "るもい市",
      block: "るもい4-4-4",
      building: "るもい荘",
      phone_number: "09022222222",
      email: "yamamoto333@gmail.com",
      password:  "yamamoto333",
      nickname: "やまやまやま",
      area1: "神奈川県",
      area2: "新潟県",
      area3: "",
      delete_flag: "0",
      introduction: "犬大好きです。。"
    },
    {
      image_id: "",
      last_name: "山本",
      first_name: "四郎",
      last_name_kana: "山本",
      first_name_kana: "四郎",
      postcode: "1114444",
      prefecture: "北海道",
      city: "夕張市",
      block: "夕張4-4-4",
      building: "夕張荘",
      phone_number: "09022222222",
      email: "yamamoto444@gmail.com",
      password:  "yamamoto444",
      nickname: "やましろう",
      area1: "神奈川県",
      area2: "新潟県",
      area3: "",
      delete_flag: "0",
      introduction: "犬大好きです。。"
    },
    {
      image_id: "",
      last_name: "山本",
      first_name: "五郎",
      last_name_kana: "山本",
      first_name_kana: "五郎",
      postcode: "1114444",
      prefecture: "神奈川",
      city: "川崎市",
      block: "川崎4-4-4",
      building: "川崎荘",
      phone_number: "09022222222",
      email: "yamamoto555@gmail.com",
      password:  "yamamoto555",
      nickname: "やまごろう",
      area1: "神奈川県",
      area2: "新潟県",
      area3: "",
      delete_flag: "0",
      introduction: "犬大好きです。。"
    },
  ]
)

Admin.create!(
  email: "admin@gmail.com",
  password:  "admin123",
)

Partner.create!(
  [
    {
      user_id: "1",
      dog_breed: "コーギー",
      image_id: "",
      name: "むぎ",
      birthday: "",
      gender: "オス",
      weight: "8",
      character: "おとなしい",
      delete_flag: "0"
    },
    {
      user_id: "1",
      dog_breed: "コーギー",
      image_id: "",
      name: "むぎむぎ",
      birthday: "",
      gender: "オス",
      weight: "8",
      character: "おとなしい",
      delete_flag: "0"
    },
    {
      user_id: "2",
      dog_breed: "コーギー",
      image_id: "",
      name: "こむぎ",
      birthday: "",
      gender: "オス",
      weight: "8",
      character: "おとなしい",
      delete_flag: "0"
    },
    {
      user_id: "2",
      dog_breed: "柴犬",
      image_id: "",
      name: "しーばー",
      birthday: "",
      gender: "オス",
      weight: "8",
      character: "おとなしい",
      delete_flag: "0"
    }
  ]
)

Recruit.create!(
  [
    {
      user_id: "1",
      walker_id: "1",
      partner_id: "1",
      offer_date: "2020/10/10",
      start_time: "10:00",
      finish_time: "11:00",
      text: "よろしくお願いします。",
      status: "1",
      apply_num: "0",
      delete_flag: "0"
    },
    {
      user_id: "1",
      walker_id: "1",
      partner_id: "1",
      offer_date: "2019/10/10",
      start_time: "10:00",
      finish_time: "11:00",
      text: "よろしくお願いします。",
      status: "1",
      apply_num: "0",
      delete_flag: "0"
    },
    {
      user_id: "1",
      walker_id: "",
      partner_id: "1",
      offer_date: "2020/10/10",
      start_time: "10:00",
      finish_time: "11:00",
      text: "よろしくお願いします。",
      status: "0",
      apply_num: "3",
      delete_flag: "0"
    },
    {
      user_id: "1",
      walker_id: "",
      partner_id: "1",
      offer_date: "2020/10/10",
      start_time: "10:00",
      finish_time: "11:00",
      text: "よろしくお願いします。",
      status: "0",
      apply_num: "3",
      delete_flag: "0"
    },
    {
      user_id: "2",
      walker_id: "",
      partner_id: "1",
      offer_date: "2020/10/10",
      start_time: "10:00",
      finish_time: "11:00",
      text: "よろしくお願いします。",
      status: "0",
      apply_num: "0",
      delete_flag: "0"
    },
    {
      user_id: "1",
      walker_id: "1",
      partner_id: "1",
      offer_date: "2020/10/11",
      start_time: "10:00",
      finish_time: "11:00",
      text: "よろしくお願いします。",
      status: "0",
      apply_num: "1",
      delete_flag: "0"
    },
    {
      user_id: "1",
      walker_id: "1",
      partner_id: "1",
      offer_date: "2019/10/10",
      start_time: "10:00",
      finish_time: "11:00",
      text: "よろしくお願いします。",
      status: "1",
      apply_num: "1",
      delete_flag: "0"
    },
    {
      user_id: "3",
      walker_id: "1",
      partner_id: "1",
      offer_date: "2019/10/10",
      start_time: "10:00",
      finish_time: "11:00",
      text: "よろしくお願いします。",
      status: "1",
      apply_num: "1",
      delete_flag: "0"
    }
  ]
)
Room.create!(
  [
    {
      recruit_id: "1",
      walker_id: "1"
    },
    {
      recruit_id: "1",
      walker_id: "2"
    },
    {
      recruit_id: "2",
      walker_id: "1"
    },
    {
      recruit_id: "2",
      walker_id: "2"
    },
    {
      recruit_id: "8",
      walker_id: "5"
    },
    {
      recruit_id: "3",
      walker_id: "1"
    }
  ]
)

Message.create!(
  [
    {
      room_id: "1",
      user_id: "1",
      walker_id: "",
      content: "こんにちは"
    },
    {
      room_id: "1",
      user_id: "1",
      walker_id: "",
      content: "よろしくです。"
    },
    {
      room_id: "1",
      user_id: "",
      walker_id: "1",
      content: "どうも"
    },
    {
      room_id: "1",
      user_id: "",
      walker_id: "1",
      content: "こんばんは"
    },
    {
      room_id: "6",
      user_id: "",
      walker_id: "1",
      content: "ども"
    },
    {
      room_id: "6",
      user_id: "",
      walker_id: "1",
      content: "よろしくです。"
    }
  ]
)

Review.create!(
  [
    {
      recruit_id: "1",
      title: "よかった",
      content: "またお願いします",
      satisfaction: "5",
      delete_flag: "0"
    },
    {
      recruit_id: "1",
      title: "だめ",
      content: "もう頼まない",
      satisfaction: "1",
      delete_flag: "0"
    },
    {
    recruit_id: "3",
    title: "よかった",
    content: "またお願いします",
    satisfaction: "3",
    delete_flag: "0"
    },
    {
    recruit_id: "4",
    title: "よかった",
    content: "またお願いします",
    satisfaction: "3",
    delete_flag: "0"
    },
    {
    recruit_id: "5",
    title: "よかった",
    content: "またお願いします",
    satisfaction: "3",
    delete_flag: "0"
    },
    {
      recruit_id: "6",
      title: "よかった",
      content: "またお願いします",
      satisfaction: "3",
      delete_flag: "0"
    },
    {
      recruit_id: "7",
      title: "よかった",
      content: "またお願いします",
      satisfaction: "3",
      delete_flag: "0"
    }
  ]
)
WalkerRecruit.create!(
  [
    {
      walker_id: "1",
      recruit_id: "3",
      flag: "0",
    },
    {
      walker_id: "2",
      recruit_id: "3",
      flag: "0",
    },
    {
      walker_id: "3",
      recruit_id: "3",
      flag: "0",
    },
    {
      walker_id: "1",
      recruit_id: "4",
      flag: "0",
    },
    {
      walker_id: "2",
      recruit_id: "4",
      flag: "0",
    },
    {
      walker_id: "3",
      recruit_id: "4",
      flag: "0",
    },
    {
      walker_id: "3",
      recruit_id: "6",
      flag: "0",
    },
    {
      walker_id: "4",
      recruit_id: "6",
      flag: "0",
    },
    {
      walker_id: "4",
      recruit_id: "7",
      flag: "0",
    },
    {
      walker_id: "5",
      recruit_id: "7",
      flag: "0",
    },
    {
      walker_id: "2",
      recruit_id: "1",
      flag: "0",
    },
  ]
)

Contact.create!(
  [
    {
      user_id: "1",
      walker_id: "",
      title: "サービスについて",
      content: "どのように依頼すればいいですか？",
      reply: ""
    },
    {
      user_id: "",
      walker_id: "1",
      title: "サイトについて",
      content: "退会方法を教えてください。",
      reply: ""
    },
    {
      user_id: "1",
      walker_id: "",
      title: "walkerについて",
      content: "walkerの方が時間を守りません。",
      reply: ""
    },
    {
      user_id: "",
      walker_id: "2",
      title: "walkerについて",
      content: "登録情報はどこで編集できますか？",
      reply: ""
    },
    {
      user_id: "2",
      walker_id: "",
      title: "依頼について",
      content: "２匹同時に依頼したいのですが、可能でしょうか。",
      reply: ""
    }
  ]
)
