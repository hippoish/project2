class Neighborhood < ActiveRecord::Base
  has_many :users
  has_many :posts
  has_many :carpools
  has_many :replies, through: :posts
end
