require 'spec_helper'

describe "shoes/index" do
  before(:each) do
    assign(:shoes, [
      stub_model(Shoe,
        :item => "Item",
        :gender => "Gender",
        :price => "Price",
        :comment => "MyText"
      ),
      stub_model(Shoe,
        :item => "Item",
        :gender => "Gender",
        :price => "Price",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of shoes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Item".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
