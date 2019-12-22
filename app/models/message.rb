class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user, optional: true
  belongs_to :walker, optional: true

  # def short_description
  #   description[0, 20] + '...'
  # end

end
