class Reply < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  has_one :neighborhood, through: :post
end
