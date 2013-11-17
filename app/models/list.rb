class List < ActiveRecord::Base
  attr_accessible :comments, :gender, :item, :price
  validates_presence_of :gender, :item
  validates_inclusion_of :gender, :in => %w(both child gents household ladies),
                        :message => "values should be (both child gents household ladies)"
end
