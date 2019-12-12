class Partner < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :recruits
end
