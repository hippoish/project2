class Post < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :user
  has_many :replies, dependent: :destroy
end
