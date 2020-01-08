FactoryBot.define do
  factory :partner do
    name { 'test_dog' }
    dog_breed { 'その他' }
    birthday {'2000-01-01'}
    gender { 'オス' }
    weight { '8' }
    character { 'おとなしい' }
    user
  end
end