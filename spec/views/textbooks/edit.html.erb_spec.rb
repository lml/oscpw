require 'spec_helper'

describe "textbooks/edit" do
  before(:each) do
    @textbook = assign(:textbook, stub_model(Textbook,
      :name => "MyString",
      :author => "MyString",
      :isbn => "MyString"
    ))
  end

  it "renders the edit textbook form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => textbooks_path(@textbook), :method => "post" do
      assert_select "input#textbook_name", :name => "textbook[name]"
      assert_select "input#textbook_author", :name => "textbook[author]"
      assert_select "input#textbook_isbn", :name => "textbook[isbn]"
    end
  end
end
