require 'rails_helper'

RSpec.describe "morris/show", type: :view do
  before(:each) do
    @morri = assign(:morri, Morri.create!(
      men: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
