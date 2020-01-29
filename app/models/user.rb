class User < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :postcode, presence: true
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :block, presence: true
  validates :phone_number, presence: true
  validates :nickname, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  mount_uploader :avatar, AvatarUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # attachment :image
  has_many :partners, dependent: :destroy
  has_many :recruits, dependent: :destroy
  has_many :rooms, through: :recruits
  has_many :contacts, dependent: :destroy
  
  def self.message
    User.joins({:recruit => {:room => :message}})
  end
end
