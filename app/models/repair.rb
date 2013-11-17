class Repair < ActiveRecord::Base
  attr_accessible :comment, :garment, :item, :price
  validates_presence_of :garment, :item
end
