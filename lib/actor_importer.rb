class ActorImporter

  attr_reader :source

  def initialize(source=nil)
    @source = source
  end

  def import!
    unless source
      puts "SOURCE must be specified. ex. `rake import:actors SOURCE=example.xml`"
      return false
    end
    puts "Implement me."
  end

end
