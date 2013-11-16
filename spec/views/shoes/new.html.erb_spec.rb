require 'spec_helper'

describe "shoes/new" do
  before(:each) do
    assign(:shoe, stub_model(Shoe,
      :item => "MyString",
      :gender => "MyString",
      :price => "MyString",
      :comment => "MyText"
    ).as_new_record)
  end

  it "renders new shoe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shoes_path, "post" do
      assert_select "input#shoe_item[name=?]", "shoe[item]"
      assert_select "input#shoe_gender[name=?]", "shoe[gender]"
      assert_select "input#shoe_price[name=?]", "shoe[price]"
      assert_select "textarea#shoe_comment[name=?]", "shoe[comment]"
    end
  end
end
