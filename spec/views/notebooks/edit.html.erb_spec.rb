require 'rails_helper'

RSpec.describe "notebooks/edit", :type => :view do
  before(:each) do
    @notebook = assign(:notebook, Notebook.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit notebook form" do
    render

    assert_select "form[action=?][method=?]", notebook_path(@notebook), "post" do

      assert_select "input#notebook_title[name=?]", "notebook[title]"
    end
  end
end
