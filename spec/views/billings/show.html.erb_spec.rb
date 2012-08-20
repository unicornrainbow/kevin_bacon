require 'spec_helper'

describe "billings/show" do
  before(:each) do
    @billing = assign(:billing, stub_model(Billing,
      :actor => nil,
      :movie => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
