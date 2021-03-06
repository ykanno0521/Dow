class Walker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  mount_uploader :avatar, AvatarUploader
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :rooms, dependent: :destroy
  attachment :image
  has_many :recruits, through: :walker_recruits
  # has_many :recruits
  has_many :walker_recruits
  has_many :contacts, dependent: :destroy
end
