require 'rails_helper'

RSpec.describe "morris/index", type: :view do
  before(:each) do
    assign(:morris, [
      Morri.create!(
        men: 2
      ),
      Morri.create!(
        men: 2
      )
    ])
  end

  it "renders a list of morris" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
