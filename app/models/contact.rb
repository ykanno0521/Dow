class Contact < ApplicationRecord

  #タイトル必須かつ20文字いないとする
  validates :title, presence: true, length: { minimum: 5, maximum: 20 }
  validates :content, presence: true, length: { minimum: 10, maximum: 200 }


  belongs_to :user, optional: true
  belongs_to :walker, optional: true
end
