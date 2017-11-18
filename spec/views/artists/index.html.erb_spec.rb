
require 'rails_helper'

describe "artists/index.html.erb" do

  let(:artist1) { Artist.create(name: "Name1") }
  let(:artist2) { create :artist}
  it "is invalid if artists name is not rendered" do
    assign(:artists,[artist1,artist2
        ])
    render
    expect(rendered).to have_content(artist1.name)
    expect(rendered).to have_content(artist2.name)
  end

end
