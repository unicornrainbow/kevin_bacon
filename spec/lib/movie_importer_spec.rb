require 'spec_helper'
require 'movie_importer'

describe MovieImporter do

  describe "#import!" do
    it "should require source to have a value" do
      subject.source.should be_nil
      $stdout.should_receive(:puts).with("SOURCE must be specified. ex. `rake import:movies SOURCE=example.xml`")
      subject.import!.should == false
    end
  end

  describe "#parsed_movies_with_actors" do
    it "should return an array with movies and actors" do
      subject = described_class.new('spec/example_xml/movies_short_list.xml')
      subject.parsed_movies_with_actors.should == [
        ["Batman", [
          "Michael Keaton",
          "Jack Nicholson",
          "Kim Basinger"]],
        ["L.A. Confidential", [
          "Kevin Spacey",
          "Russell Crowe",
          "Guy Pearce",
          "Kim Basinger"]]
      ]
    end
  end

end
