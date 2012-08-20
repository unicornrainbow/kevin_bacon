require 'spec_helper'

describe "billings/new" do
  before(:each) do
    assign(:billing, stub_model(Billing,
      :actor => nil,
      :movie => nil
    ).as_new_record)
  end

  it "renders new billing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => billings_path, :method => "post" do
      assert_select "input#billing_actor", :name => "billing[actor]"
      assert_select "input#billing_movie", :name => "billing[movie]"
    end
  end
end
