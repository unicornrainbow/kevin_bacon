class MovieImporter

  attr_reader :source

  def initialize(source=nil)
    @source = source
  end

  # Imports actors from `source` to database
  def import!
    unless source
      puts "SOURCE must be specified. ex. `rake import:movies SOURCE=example.xml`"
      return false
    end

    parsed_movies_with_actors.each do |movie_title, actors_names|
      begin
        puts movie_title
        actors_names.each do |name|
          puts "- #{name}"
        end
        movie = Movie.find_or_create_by_title(movie_title)
        actors.each do |actor_names|
          actor = Actor.find_or_create_by_name(actor)
          movie.add_actor(actor)
        end
      rescue => e
        puts "Encountered a problem importing #{movie_title}.\n#{e.message}"
      end
    end
  end

  # Returns array of [movie_title, actor_names].
  #
  #   - movie_title: String title of the movie
  #   - actor_names: Array actor names as string
  def parsed_movies_with_actors
    File.open(Rails.root.join(source)) do |f|
      doc = Nokogiri::XML(f)
      movie_nodes = doc.xpath('//movie')
      movie_nodes.map do |movie|
        # Extract title or movie from @title
        title = movie.attributes['title'].value
        # Extract actor names from movie element children
        actor_nodes = movie.xpath('actor')
        actor_names = actor_nodes.map { |a| a.attributes['name'].value }

        # Return result as array containing title and array of actor names.;
        [title, actor_names]
      end
    end
  end

end
