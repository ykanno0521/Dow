class Room < ApplicationRecord
  belongs_to :recruit
  belongs_to :walker
  has_many :messages, dependent: :destroy
  has_one :message, -> {order(created_at: :desc).limit(1)}
  
  # def message_last
  #   Message.where(room_id: self.id).order(created_at: :desc).first
  # end 

  def message_last
      messages.order(created_at: :desc).first
  end 

end
