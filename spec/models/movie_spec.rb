require 'spec_helper'

describe Movie do
  it { should have_many(:billings) }
  it { should have_many(:actors) }

  describe "#add_actor" do
    let(:actor) { stub_model(Actor) }
    it "should add actor to the list of actors" do
      subject.actors.should_receive(:<<).with(actor)
      subject.add_actor(actor)
    end
  end

end
