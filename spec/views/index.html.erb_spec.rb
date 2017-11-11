require 'rails_helper'

describe "index.html.erb" do
  let(:artist) {create :artist}

  it "renders name" do
    render
    expect(rendered).to have_content artist.name
  end

  it "links to artists page" do
    visit artists_url(artist)

    expect(current_path.to eq(artist_path(artist)))
  end
end
