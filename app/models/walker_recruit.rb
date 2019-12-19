class WalkerRecruit < ApplicationRecord
  belongs_to :walker
  belongs_to :recruit

  def get_room_id
    Room.find_or_create_by(recruit_id: self.recruit_id, walker_id: self.walker_id).id
  end
end
