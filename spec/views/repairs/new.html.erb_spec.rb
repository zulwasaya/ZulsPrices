require 'spec_helper'

describe "repairs/new" do
  before(:each) do
    assign(:repair, stub_model(Repair,
      :item => "MyString",
      :garment => "MyString",
      :price => "",
      :comment => "MyText"
    ).as_new_record)
  end

  it "renders new repair form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", repairs_path, "post" do
      assert_select "input#repair_item[name=?]", "repair[item]"
      assert_select "input#repair_garment[name=?]", "repair[garment]"
      assert_select "input#repair_price[name=?]", "repair[price]"
      assert_select "textarea#repair_comment[name=?]", "repair[comment]"
    end
  end
end
