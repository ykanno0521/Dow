class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
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
