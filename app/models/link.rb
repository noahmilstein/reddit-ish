class Link < ActiveRecord::Base
  # add validations and tests
  belongs_to :user
  has_many :comments
  acts_as_votable
end
