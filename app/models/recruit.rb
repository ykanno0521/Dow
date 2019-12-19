class Recruit < ApplicationRecord
  belongs_to :user
  belongs_to :partner
  has_many :rooms, dependent: :destroy
  has_many :walkers, through: :walker_recruits
  has_many :walker_recruits
  accepts_nested_attributes_for :walker_recruits
  has_one :review, dependent: :destroy
end
