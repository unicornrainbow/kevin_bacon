require 'spec_helper'

describe "billings/index" do
  before(:each) do
    assign(:billings, [
      stub_model(Billing,
        :actor => nil,
        :movie => nil
      ),
      stub_model(Billing,
        :actor => nil,
        :movie => nil
      )
    ])
  end

  it "renders a list of billings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
