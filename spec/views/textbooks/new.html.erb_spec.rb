require 'spec_helper'

describe "textbooks/new" do
  before(:each) do
    assign(:textbook, stub_model(Textbook,
      :name => "MyString",
      :author => "MyString",
      :isbn => "MyString"
    ).as_new_record)
  end

  it "renders new textbook form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => textbooks_path, :method => "post" do
      assert_select "input#textbook_name", :name => "textbook[name]"
      assert_select "input#textbook_author", :name => "textbook[author]"
      assert_select "input#textbook_isbn", :name => "textbook[isbn]"
    end
  end
end
