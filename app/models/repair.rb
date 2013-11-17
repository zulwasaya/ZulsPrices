class Repair < ActiveRecord::Base
  attr_accessible :comment, :garment, :item, :price
  validates_presence_of :garment, :item
  validates_inclusion_of :garment, :in => %w(badge blouse coat curtain dress jacket jumper shirt skirt trouser),
                         :message => "values should be (badge blouse coat curtain dress jacket jumper shirt skirt trouser)"
end
