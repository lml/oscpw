require 'spec_helper'

describe "textbooks/show" do
  before(:each) do
    @textbook = assign(:textbook, stub_model(Textbook,
      :name => "Name",
      :author => "Author",
      :isbn => "Isbn"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Author/)
    rendered.should match(/Isbn/)
  end
end
