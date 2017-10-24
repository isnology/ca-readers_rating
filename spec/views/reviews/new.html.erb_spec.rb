require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      :book => nil,
      :review => "MyText",
      :rating => 1
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input[name=?]", "review[book_id]"

      assert_select "textarea[name=?]", "review[review]"

      assert_select "input[name=?]", "review[rating]"
    end
  end
end
