class Shoe < ActiveRecord::Base
  attr_accessible :comment, :gender, :item, :price
  validates_presence_of :gender, :item
end
