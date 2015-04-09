require 'rails_helper'

RSpec.describe "notebooks/new", :type => :view do
  before(:each) do
    assign(:notebook, Notebook.new(
      :title => "MyString"
    ))
  end

  it "renders new notebook form" do
    render

    assert_select "form[action=?][method=?]", notebooks_path, "post" do

      assert_select "input#notebook_title[name=?]", "notebook[title]"
    end
  end
end
