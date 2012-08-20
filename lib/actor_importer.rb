class ActorImporter

  attr_reader :source
  def initialize(source)
    @source = source
  end

  def import!
    unless source
      puts "SOURCE must be specified. ex. `rake import:actors SOURCE=example.xml`"
      return
    end
    puts "Implement me."
  end

end
