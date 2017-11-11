require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do

    it "is invalid without a name" do
      song = Song.new(name: "")
      song.valid?
      expect(song.errors).to have_key(:name)
    end

    it "is invalid if song duration is bigger than 600 seconds" do
      song = Song.new(duration: 601)
      song.valid?
      expect(song.errors).to have_key(:name)
    end

    it "is invalid if song duration is lower than 1 second" do
      song = Song.new(duration: 0)
      song.valid?
      expect(song.errors).to have_key(:name)
    end
  end

  describe "association with artist" do
    let(:artist) {create :artist}
    it "belongs to an artist" do
      song = artist.songs.create
      expect(song.artist).to eq(artist)
    end
  end
end
