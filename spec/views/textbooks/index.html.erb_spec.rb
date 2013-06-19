require 'spec_helper'

describe "textbooks/index" do
  before(:each) do
    assign(:textbooks, [
      stub_model(Textbook,
        :name => "Name",
        :author => "Author",
        :isbn => "Isbn"
      ),
      stub_model(Textbook,
        :name => "Name",
        :author => "Author",
        :isbn => "Isbn"
      )
    ])
  end

  it "renders a list of textbooks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Isbn".to_s, :count => 2
  end
end
