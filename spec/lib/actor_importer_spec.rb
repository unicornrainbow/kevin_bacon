require 'spec_helper'
require 'actor_importer'

describe ActorImporter do

  describe "#import!" do
    it "should require source to have a value" do
      subject.source.should be_nil
      $stdout.should_receive(:puts).with("SOURCE must be specified. ex. `rake import:actors SOURCE=example.xml`")
      subject.import!.should == false
    end
  end

end
