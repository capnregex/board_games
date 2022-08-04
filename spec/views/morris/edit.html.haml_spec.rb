require 'rails_helper'

RSpec.describe "morris/edit", type: :view do
  before(:each) do
    @morri = assign(:morri, Morri.create!(
      men: 1
    ))
  end

  it "renders the edit morri form" do
    render

    assert_select "form[action=?][method=?]", morri_path(@morri), "post" do

      assert_select "input[name=?]", "morri[men]"
    end
  end
end
