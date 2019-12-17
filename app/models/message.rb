class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user, optional: true
  belongs_to :walker, optional: true
end
