class Contact < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :walker, optional: true
end
