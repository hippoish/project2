class Neighborhood < ActiveRecord::Base
  has_many :users, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :carpools, dependent: :destroy
  has_many :replies, through: :posts, dependent: :destroy
end
