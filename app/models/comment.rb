class Comment < ApplicationRecord
  # add validations and tests
  belongs_to :user
  belongs_to :link
end
