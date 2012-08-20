class Movie < ActiveRecord::Base
  attr_accessible :title
  has_many :billings
  has_many :actors, :through => :billings

  def add_actor(actor)
    actors << actor
  end

end
