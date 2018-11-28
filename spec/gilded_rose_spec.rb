require "./gilded_rose.rb"
require "rspec"

describe GildedRose do

  describe "#update_quality" do
    describe "5+ Dexterity Vest" do
     describe "sell_in > 0 && quality > 0" do
       it "reduces the sell_in by 1" do
         subject.update_quality
         expect(subject.items[0].sell_in).to eq 9
       end

       it "reduces the quality by 1" do

       end
     end
    end
  end
end
