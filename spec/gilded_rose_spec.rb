require "gilded_rose.rb"
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
         subject.update_quality
         expect(subject.items[0].quality).to eq 19
       end
     end

     describe "sell_in == 0 && quality > 0" do
       before do
         10.times { subject.update_quality }
       end

       it "reduces the sell_in by 1" do
         expect(subject.items[0].sell_in).to eq 0
       end

       it "reduces the quality by 1" do
         expect(subject.items[0].quality).to eq 10
       end
     end

     describe "sell_in < 0 && quality > 0" do
       before do
         11.times { subject.update_quality }
       end

       it "reduces the sell_in by 1" do
         expect(subject.items[0].sell_in).to eq -1
       end

       it "reduces the quality by 1" do
         expect(subject.items[0].quality).to eq 8
       end
     end

     describe "sell_in < 0 && quality == 0" do
       before do
         25.times { subject.update_quality }
       end

       it "reduces the sell_in by 1" do
         expect(subject.items[0].sell_in).to eq -15
       end

       it "reduces the quality by 1" do
         expect(subject.items[0].quality).to eq 0
       end
     end
    end

    describe "Aged Brie" do
      describe "sell_in > 0 && quality < 50" do
        it "reduces the sell_in by 1" do
          subject.update_quality
          expect(subject.items[1].sell_in).to eq 1
        end

        it "increases the quality by 1" do
          subject.update_quality
          expect(subject.items[1].quality).to eq 1
        end
      end

      describe "sell_in == 0 && quality < 50" do
        before do
          subject.update_quality
          subject.update_quality
          subject.update_quality
        end
        it "reduces the sell_in by 1" do
          expect(subject.items[1].sell_in).to eq -1
        end

        it "increases the quality by 2" do
          expect(subject.items[1].quality).to eq 4
        end
      end

      describe "sell_in < 0 && quality < 50" do
        before do
          subject.update_quality
          subject.update_quality
          subject.update_quality
          subject.update_quality
        end
        it "reduces the sell_in by 1" do
          expect(subject.items[1].sell_in).to eq -2
        end

        it "increases the quality by 2" do
          expect(subject.items[1].quality).to eq 6
        end
      end

      describe "sell_in < 0 && quality == 50" do
        before do
          55.times { subject.update_quality }
        end
        it "reduces the sell_in by 1" do
          expect(subject.items[1].sell_in).to eq -53
        end

        it "does not change the quality" do
          expect(subject.items[1].quality).to eq 50
        end
      end
    end

    describe "Elixir of the Mongoose" do
      describe "sell_in > 0 && quality > 0" do
        it "reduces the sell_in by 1" do
          subject.update_quality
          expect(subject.items[2].sell_in).to eq 4
        end

        it "reduces the quality by 1" do
          subject.update_quality
          expect(subject.items[2].quality).to eq 6
        end
      end

      describe "sell_in == 0 && quality > 0" do
        before do
          6.times { subject.update_quality }
        end
        it "reduces the sell_in by 1" do
          expect(subject.items[2].sell_in).to eq -1
        end

        it "reduces the quality by 1" do
          expect(subject.items[2].quality).to eq 0
        end
      end

      describe "sell_in < 0 && quality > 0" do
        before do
          5.times { subject.update_quality }
        end
        it "reduces the sell_in by 1" do
          expect(subject.items[2].sell_in).to eq 0
        end

        it "reduces the quality by 1" do
          expect(subject.items[2].quality).to eq 2
        end
      end

      describe "sell_in < 0 && quality == 0" do
        before do
          20.times { subject.update_quality }
        end
        it "reduces the sell_in by 1" do
          expect(subject.items[2].sell_in).to eq -15
        end

        it "reduces the quality by 1" do
          expect(subject.items[2].quality).to eq 0
        end
      end
    end

    describe "Sulfuras, Hand of Ragnaros" do
      describe "sell_in == 0 && quality == 80" do
        it "does not change the sell_in" do
          subject.update_quality
          expect(subject.items[3].sell_in).to eq 0
        end

        it "does not change the quality" do
          subject.update_quality
          expect(subject.items[3].quality).to eq 80
        end
      end
    end

    describe "Backstage passes to a TAFKAL80ETC concert" do
      describe "sell_in > 10 && quality < 80" do
        it "reduces the sell_in by 1" do
          subject.update_quality
          expect(subject.items[4].sell_in).to eq 14
        end

        it "increases the quality by 1" do
          subject.update_quality
          expect(subject.items[4].quality).to eq 21
        end
      end

      describe "sell_in > 5 && quality < 80" do
        before do
          6.times { subject.update_quality }
        end
        it "reduces the sell_in by 1" do
          expect(subject.items[4].sell_in).to eq 9
        end

        it "increases the quality by 2" do
          expect(subject.items[4].quality).to eq 27
        end
      end

      describe "5 > sell_in > 0 && quality < 50" do
        before do
          12.times { subject.update_quality }
        end
        it "reduces the sell_in by 1" do
          expect(subject.items[4].sell_in).to eq 3
        end

        it "increases the quality by 2" do
          expect(subject.items[4].quality).to eq 41
        end
      end

      describe "sell_in == 0 && quality < 50" do
        before do
          16.times { subject.update_quality }
        end
        it "reduces the sell_in by 1" do
          expect(subject.items[4].sell_in).to eq -1
        end

        it "increases the quality by 2" do
          expect(subject.items[4].quality).to eq 0
        end
      end

      describe "sell_in < 0 && quality == 0" do
        before do
          20.times { subject.update_quality }
        end
        it "reduces the sell_in by 1" do
          expect(subject.items[4].sell_in).to eq -5
        end

        it "increases the quality by 2" do
          expect(subject.items[4].quality).to eq 0
        end
      end
    end

    describe "Conjured Mana Cake" do
      describe "sell_in > 0 && quality > 0" do
        it "reduces the sell_in by 1" do
          subject.update_quality
          expect(subject.items[5].sell_in).to eq 2
        end

        it "decreases the quality by 2" do
          subject.update_quality
          expect(subject.items[5].quality).to eq 4
        end
      end

      describe "sell_in == 0 && quality > 0" do
        before do
          4.times { subject.update_quality }
        end
        it "reduces the sell_in by 1" do
          expect(subject.items[5].sell_in).to eq -1
        end

        it "decreases the quality by 2" do
          expect(subject.items[5].quality).to eq 0
        end
      end

      describe "sell_in < 0 && quality > 0" do
        before do
          6.times { subject.update_quality }
        end
        it "reduces the sell_in by 1" do
          expect(subject.items[5].sell_in).to eq -3
        end

        it "decreases the quality by 2" do
          expect(subject.items[5].quality).to eq 0
        end
      end
    end
  end
end
