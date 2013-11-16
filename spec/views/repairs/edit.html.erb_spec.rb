require 'spec_helper'

describe "repairs/edit" do
  before(:each) do
    @repair = assign(:repair, stub_model(Repair,
      :item => "MyString",
      :garment => "MyString",
      :price => "",
      :comment => "MyText"
    ))
  end

  it "renders the edit repair form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", repair_path(@repair), "post" do
      assert_select "input#repair_item[name=?]", "repair[item]"
      assert_select "input#repair_garment[name=?]", "repair[garment]"
      assert_select "input#repair_price[name=?]", "repair[price]"
      assert_select "textarea#repair_comment[name=?]", "repair[comment]"
    end
  end
end
