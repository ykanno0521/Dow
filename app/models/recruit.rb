class Recruit < ApplicationRecord
  # validates :partner_id, presence: true
  validate :offer_date_check


  belongs_to :user
  belongs_to :partner
  has_many :rooms, dependent: :destroy
  has_many :walkers, through: :walker_recruits
  has_many :walker_recruits
  accepts_nested_attributes_for :walker_recruits
  has_one :review, dependent: :destroy

  private
  def offer_date_check
    errors.add(:offer_date, 'その日付は登録できません。') if offer_date.nil? || offer_date < Time.current
  end
end
