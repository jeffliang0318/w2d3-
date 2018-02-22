require "rspec"
require "card"

RSpec.describe Card do

  subject(:card) { Card.new("spade", 2) }

    describe "::intialize" do

      it "Should be assigned a suit" do
        expect(card.suit).to eq("spade")
      end

      it "should be assigned a value" do
        expect(card.value).to eq(2)
      end

    end
end
