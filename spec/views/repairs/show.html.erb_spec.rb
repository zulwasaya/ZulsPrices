require 'spec_helper'

describe "repairs/show" do
  before(:each) do
    @repair = assign(:repair, stub_model(Repair,
      :item => "Item",
      :garment => "Garment",
      :price => "",
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Item/)
    rendered.should match(/Garment/)
    rendered.should match(//)
    rendered.should match(/MyText/)
  end
end
