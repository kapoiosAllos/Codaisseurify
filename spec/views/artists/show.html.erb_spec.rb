require 'rails_helper'

describe "artists/show.html.erb" do
  let! (:artist1) {create :artist}
  let! (:artist2) {create :artist}
   let! (:song1) {create :song, artist: artist1}
   let! (:song3) {create :song, artist: artist1}
   let! (:song2) {create :song, artist: artist2}
   before do
     @artist = Artist.all
   end
  it "is invalid if artist page does not show his songs" do
    assign(artist1.songs,[song3,song1])
    render
    expect(rendered).to have_content(song3.name)
    expect(rendered).to have_content(song1.name)
    expect(rendered).not_to have_content(song2.name)
  end
end
