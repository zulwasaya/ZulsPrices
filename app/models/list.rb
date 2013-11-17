class List < ActiveRecord::Base
  attr_accessible :comments, :gender, :item, :price
  validates_presence_of :gender, :item
end
