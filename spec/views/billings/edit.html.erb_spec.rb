require 'spec_helper'

describe "billings/edit" do
  before(:each) do
    @billing = assign(:billing, stub_model(Billing,
      :actor => nil,
      :movie => nil
    ))
  end

  it "renders the edit billing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => billings_path(@billing), :method => "post" do
      assert_select "input#billing_actor", :name => "billing[actor]"
      assert_select "input#billing_movie", :name => "billing[movie]"
    end
  end
end
