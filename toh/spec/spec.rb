require 'rspec'
require 'toh'

RSpec.describe TowersOH do
  subject(:game)  { TowersOH.new([[3,2,1], [], []]) }

  describe "::initialize" do

    it "Should set up three towers as arrays" do
      expect(game.towers).to eq([[3, 2, 1], [], []])
    end

    it "Should have 3 disks in decending order on first tower" do
      expect(game.towers[0]).to eq([3,2,1])
    end

  end

  describe "::move" do

    it "successfully moves selected disk to new tower" do
      expect(game.move(0,2)).to eq([[3,2],[],[1]])
    end
  end

  describe "::valid_move?" do

    it "Returns true if move is valid" do
      expect(game.valid_move?(0,1)).to be true
    end

  end

  describe "::won?" do
    it "return true if all three disks are successfully moved to another tower" do
      towers = TowersOH.new([[],[],[3,2,1]])
      expect(towers).to be_won
    end
  end

end
