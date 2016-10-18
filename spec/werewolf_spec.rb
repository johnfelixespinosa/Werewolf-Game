require_relative "spec_helper"
require_relative "../lib/werewolf.rb"

describe "#initialize" do
  it "it initializes a players array and a wolves array" do 
    @players = []
    @wolves = []
  end

describe "#how_many_players" do
  context "given '4'" do
      it "returns 4" do
        expect(how_many_players.add("4")).to eql(4)
      end
    end
  end

  context "given '10'" do
      it "returns 10" do
        expect(how_many_players.add("10")).to eql(10)
  
    end
  end
end
  