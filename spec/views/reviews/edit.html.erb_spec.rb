require 'rails_helper'

RSpec.describe "reviews/edit", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :book => nil,
      :review => "MyText",
      :rating => 1
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "input[name=?]", "review[book_id]"

      assert_select "textarea[name=?]", "review[review]"

      assert_select "input[name=?]", "review[rating]"
    end
  end
end
