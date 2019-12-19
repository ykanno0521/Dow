class Review < ApplicationRecord
  # ratyrate_rateable "satisfaction"

  belongs_to :recruit, dependent: :destroy

  def get_review_id
    Review.find_by(recruit_id: self.recruit_id).id
  end
end
