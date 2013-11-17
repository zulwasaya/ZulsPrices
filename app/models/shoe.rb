class Shoe < ActiveRecord::Base
  attr_accessible :comment, :gender, :item, :price
  validates_presence_of :gender, :item
  validates_inclusion_of :gender, :in => %w(gents ladies),
                         :message => "values should be (gents ladies)"
end
