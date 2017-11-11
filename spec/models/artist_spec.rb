require 'rails_helper'

RSpec.describe Artist, type: :model do
describe "validations" do

  it "is invalid without a name" do
    artist = Artist.new(name: "")
    artist.valid?
    expect(artist.errors).to have_key(:name)
  end

  it "is invalid with a name greater than 30 characters" do
    artist = Artist.new(name: "qwertyuiopasdfghjklzxcvbnmqwert" )
    artist.valid?
    expect(artist.errors).to have_key(:name)
  end

  it "is invalid with a name that allready exists" do
    artist = Artist.create!(name: "Marc")
    artist2 = Artist.create(name: "Marc")
    artist2.valid?
    expect(artist2.errors).to have_key(:name)
  end

end
end
