class Carpool < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :users
end
