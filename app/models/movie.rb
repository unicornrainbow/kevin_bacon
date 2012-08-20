class Movie < ActiveRecord::Base
  attr_accessible :title
  has_many :billings
  has_many :actors, :through => :billings

  def add_actor(actor)
    billings.find_or_create_by_actor_id(actor.id)
  end

end
