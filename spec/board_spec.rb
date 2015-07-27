require 'board'

describe Board do

  it "has a grid" do
    expect(subject.grid).to eq []
  end

  it "responds to place_ship method" do
    expect(subject).to respond_to(:place_ship).with(2).arguments
  end

  describe "#place_ship" do
    it "puts the ship into the grid" do
      subject.place_ship(:ship, :coordinate)
      expect(subject.grid).to include(:ship)
    end
  end
end
