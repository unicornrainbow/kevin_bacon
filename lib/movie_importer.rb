class MovieImporter

  attr_reader :source

  def initialize(source=nil)
    @source = source
  end

  # Imports actors from `source` to database
  def import!
    unless source
      puts "SOURCE must be specified. ex. `rake import:actors SOURCE=example.xml`"
      return false
    end

    parsed_movies_with_actors.each do |movie_title, actors_names|
      begin
        movie = Movie.find_or_create_by_title(movie_title)
        actors.each do |actor_names|
          actor = Actor.find_or_create_by_name(actor)
          movie.add_actor(actor)
        end
      rescue
        puts "Encountered a problem importing #{movie_title}."
      end
    end
  end

  def parsed_movies_with_actors
    debugger
    File.open(Rails.root.join(source)) do |f|
      doc = Nokogiri::XML(f)
    end
  end

end
