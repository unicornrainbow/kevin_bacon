class Actor < ActiveRecord::Base
  attr_accessible :name
  has_many :billings
  has_many :movies, :through => :billings
end
