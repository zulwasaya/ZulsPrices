require 'spec_helper'

describe "shoes/edit" do
  before(:each) do
    @shoe = assign(:shoe, stub_model(Shoe,
      :item => "MyString",
      :gender => "MyString",
      :price => "MyString",
      :comment => "MyText"
    ))
  end

  it "renders the edit shoe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shoe_path(@shoe), "post" do
      assert_select "input#shoe_item[name=?]", "shoe[item]"
      assert_select "input#shoe_gender[name=?]", "shoe[gender]"
      assert_select "input#shoe_price[name=?]", "shoe[price]"
      assert_select "textarea#shoe_comment[name=?]", "shoe[comment]"
    end
  end
end
