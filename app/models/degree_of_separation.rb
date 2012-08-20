class DegreeOfSeparation < ActiveRecord::Base
  attr_accessible :connection, :value
  belongs_to :actor
  belongs_to :connection, :class_name => 'Actor'
  attr_accessible :value
end
