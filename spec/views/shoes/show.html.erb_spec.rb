require 'spec_helper'

describe "shoes/show" do
  before(:each) do
    @shoe = assign(:shoe, stub_model(Shoe,
      :item => "Item",
      :gender => "Gender",
      :price => "Price",
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Item/)
    rendered.should match(/Gender/)
    rendered.should match(/Price/)
    rendered.should match(/MyText/)
  end
end
