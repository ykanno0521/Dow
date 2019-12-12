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
      image: "",
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
      image: "",
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
    }
  ]
)

Walker.create!(
  [
    {
      image: "",
      last_name: "鈴木",
      first_name: "一郎",
      last_name_kana: "スズキ",
      first_name_kana: "イチロウ",
      postcode: "1113333",
      prefecture: "北海道",
      city: "テスト市",
      block: "テスト3-3-3",
      building: "テスト荘",
      phone_number: "09033333333",
      email: "suzuki123@gmail.com",
      password:  "suzuki123",
      nickname: "すずちゃん",
      area1: "北海道",
      area2: "東京都",
      area3: "大阪府",
      delete_flag: "0"
    },
    {
      image: "",
      last_name: "佐藤",
      first_name: "一郎",
      last_name_kana: "サトウ",
      first_name_kana: "イチロウ",
      postcode: "1114444",
      prefecture: "北海道",
      city: "テスト市",
      block: "テスト4-4-4",
      building: "テスト荘",
      phone_number: "09022222222",
      email: "satou123@gmail.com",
      password:  "satou123",
      nickname: "さとちゃん",
      area1: "神奈川県",
      area2: "新潟県",
      area3: "京都府",
      delete_flag: "0"
    }
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
      name: "ユーザ１の犬",
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
      name: "ユーザ１の犬(2)",
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
      name: "ユーザ2の犬",
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
      name: "ユーザ2の犬(2)",
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
      offer_date: "2019/10/10",
      start_time: "10:00",
      finish_time: "11:00",
      text: "ああああ",
      status: "0",
      delete_flag: "0"
    },
    {
      user_id: "2",
      walker_id: "",
      partner_id: "1",
      offer_date: "2019/10/10",
      start_time: "10:00",
      finish_time: "11:00",
      text: "いいいい",
      status: "0",
      delete_flag: "0"
    }
  ]
)

