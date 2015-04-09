require 'rails_helper'

RSpec.describe "notebooks/index", :type => :view do
  before(:each) do
    assign(:notebooks, [
      Notebook.create!(
        :title => "Title"
      ),
      Notebook.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of notebooks" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
