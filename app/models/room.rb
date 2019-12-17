class Room < ApplicationRecord
  belongs_to :recruit
  belongs_to :walker
  has_many :messages, dependent: :destroy
end
