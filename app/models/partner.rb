class Partner < ApplicationRecord
  belongs_to :user
  attachment :image
end
