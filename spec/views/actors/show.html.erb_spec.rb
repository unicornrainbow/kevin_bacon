require 'spec_helper'

describe "actors/show" do
  before(:each) do
    @actor = assign(:actor, stub_model(Actor,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
