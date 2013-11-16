require 'spec_helper'

describe "repairs/index" do
  before(:each) do
    assign(:repairs, [
      stub_model(Repair,
        :item => "Item",
        :garment => "Garment",
        :price => "",
        :comment => "MyText"
      ),
      stub_model(Repair,
        :item => "Item",
        :garment => "Garment",
        :price => "",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of repairs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Item".to_s, :count => 2
    assert_select "tr>td", :text => "Garment".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
