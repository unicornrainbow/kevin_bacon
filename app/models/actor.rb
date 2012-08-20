class Actor < ActiveRecord::Base
  attr_accessible :name
  has_many :billings
  has_many :movies, :through => :billings
  has_many :degree_of_separations

  def self.update_degrees_of_separation!
    # Reprocess degrees of separation
    find_each do |actor|
      actor.update_degrees_of_separation!
    end
  end

  def update_degrees_of_separation!
    # Clear degrees of separation.
    degree_of_separations.destroy_all
    # Reconstruct
    collect_dos(degree_map={})
    degree_map.each do |actor_name, dos|
      degree_of_separations.create(
        :connection => Actor.find_or_create_by_name(actor_name),
        :value => dos)
    end
  end

  def collect_dos(degree_map, degree=1)
    raise "Recursion too deep." if degree > 25
    movies.each do |movie|
      # Find all cast members, record degree, remove anybody we've already seen.
      connections = movie.actors.where('name != ?', name).map do |a|
        unless degree_map[a.name]
          degree_map[a.name] = degree
          a
        end
      end.compact

      connections.each do |c|
        c.collect_dos(degree_map, degree+1)
      end
    end
  end

end
