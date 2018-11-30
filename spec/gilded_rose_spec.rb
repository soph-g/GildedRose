require "gilded_rose.rb"
require "rspec"

describe GildedRose do

  describe "5+ Dexterity Vest" do
    let(:item) { subject.items[0] }
    it "Day 0" do
      expect(item.sell_in).to eq 10
      expect(item.quality).to eq 20
    end
    it "Day 1" do
      subject.update_quality
      expect(item.sell_in).to eq 9
      expect(item.quality).to eq 19
    end
    it "Day 2" do
      2.times { subject.update_quality }
      expect(item.sell_in).to eq 8
      expect(item.quality).to eq 18
    end
    it "Day 3" do
      3.times { subject.update_quality }
      expect(item.sell_in).to eq 7
      expect(item.quality).to eq 17
    end
    it "Day 4" do
      4.times { subject.update_quality }
      expect(item.sell_in).to eq 6
      expect(item.quality).to eq 16
    end
    it "Day 5" do
      5.times { subject.update_quality }
      expect(item.sell_in).to eq 5
      expect(item.quality).to eq 15
    end
    it "Day 6" do
      6.times { subject.update_quality }
      expect(item.sell_in).to eq 4
      expect(item.quality).to eq 14
    end
    it "Day 7" do
      7.times { subject.update_quality }
      expect(item.sell_in).to eq 3
      expect(item.quality).to eq 13
    end
    it "Day 8" do
      8.times { subject.update_quality }
      expect(item.sell_in).to eq 2
      expect(item.quality).to eq 12
    end
    it "Day 9" do
      9.times { subject.update_quality }
      expect(item.sell_in).to eq 1
      expect(item.quality).to eq 11
    end
    it "Day 10" do
      10.times { subject.update_quality }
      expect(item.sell_in).to eq 0
      expect(item.quality).to eq 10
    end
    it "Day 11" do
      11.times { subject.update_quality }
      expect(item.sell_in).to eq -1
      expect(item.quality).to eq 8
    end
    it "Day 12" do
      12.times { subject.update_quality }
      expect(item.sell_in).to eq -2
      expect(item.quality).to eq 6
    end
    it "Day 13" do
      13.times { subject.update_quality }
      expect(item.sell_in).to eq -3
      expect(item.quality).to eq 4
    end
    it "Day 14" do
      14.times { subject.update_quality }
      expect(item.sell_in).to eq -4
      expect(item.quality).to eq 2
    end
    it "Day 15" do
      15.times { subject.update_quality }
      expect(item.sell_in).to eq -5
      expect(item.quality).to eq 0
    end
    it "Day 16" do
      16.times { subject.update_quality }
      expect(item.sell_in).to eq -6
      expect(item.quality).to eq 0
    end
  end

  describe "Aged Brie" do
    let(:item) { subject.items[1] }
    it "Day 0" do
      expect(item.sell_in).to eq 2
      expect(item.quality).to eq 0
    end
    it "Day 1" do
      subject.update_quality
      expect(item.sell_in).to eq 1
      expect(item.quality).to eq 1
    end
    it "Day 2" do
      2.times { subject.update_quality }
      expect(item.sell_in).to eq 0
      expect(item.quality).to eq 2
    end
    it "Day 3" do
      3.times { subject.update_quality }
      expect(item.sell_in).to eq -1
      expect(item.quality).to eq 4
    end
    it "Day 4" do
      4.times { subject.update_quality }
      expect(item.sell_in).to eq -2
      expect(item.quality).to eq 6
    end
    it "Day 5" do
      5.times { subject.update_quality }
      expect(item.sell_in).to eq -3
      expect(item.quality).to eq 8
    end
    it "Day 6" do
      6.times { subject.update_quality }
      expect(item.sell_in).to eq -4
      expect(item.quality).to eq 10
    end
    it "Day 7" do
      7.times { subject.update_quality }
      expect(item.sell_in).to eq -5
      expect(item.quality).to eq 12
    end
    it "Day 8" do
      8.times { subject.update_quality }
      expect(item.sell_in).to eq -6
      expect(item.quality).to eq 14
    end
    it "Day 9" do
      9.times { subject.update_quality }
      expect(item.sell_in).to eq -7
      expect(item.quality).to eq 16
    end
    it "Day 10" do
      10.times { subject.update_quality }
      expect(item.sell_in).to eq -8
      expect(item.quality).to eq 18
    end
    it "Day 11" do
      11.times { subject.update_quality }
      expect(item.sell_in).to eq -9
      expect(item.quality).to eq 20
    end
    it "Day 12" do
      12.times { subject.update_quality }
      expect(item.sell_in).to eq -10
      expect(item.quality).to eq 22
    end
    it "Day 13" do
      13.times { subject.update_quality }
      expect(item.sell_in).to eq -11
      expect(item.quality).to eq 24
    end
    it "Day 14" do
      14.times { subject.update_quality }
      expect(item.sell_in).to eq -12
      expect(item.quality).to eq 26
    end
    it "Day 15" do
      15.times { subject.update_quality }
      expect(item.sell_in).to eq -13
      expect(item.quality).to eq 28
    end
    it "Day 16" do
      16.times { subject.update_quality }
      expect(item.sell_in).to eq -14
      expect(item.quality).to eq 30
    end
    it "Day 17" do
      17.times { subject.update_quality }
      expect(item.sell_in).to eq -15
      expect(item.quality).to eq 32
    end
    it "Day 18" do
      18.times { subject.update_quality }
      expect(item.sell_in).to eq -16
      expect(item.quality).to eq 34
    end
    it "Day 19" do
      19.times { subject.update_quality }
      expect(item.sell_in).to eq -17
      expect(item.quality).to eq 36
    end
    it "Day 20" do
      20.times { subject.update_quality }
      expect(item.sell_in).to eq -18
      expect(item.quality).to eq 38
    end
    it "Day 21" do
      21.times { subject.update_quality }
      expect(item.sell_in).to eq -19
      expect(item.quality).to eq 40
    end
    it "Day 22" do
      22.times { subject.update_quality }
      expect(item.sell_in).to eq -20
      expect(item.quality).to eq 42
    end
    it "Day 23" do
      23.times { subject.update_quality }
      expect(item.sell_in).to eq -21
      expect(item.quality).to eq 44
    end
    it "Day 24" do
      24.times { subject.update_quality }
      expect(item.sell_in).to eq -22
      expect(item.quality).to eq 46
    end
    it "Day 25" do
      25.times { subject.update_quality }
      expect(item.sell_in).to eq -23
      expect(item.quality).to eq 48
    end
    it "Day 26" do
      26.times { subject.update_quality }
      expect(item.sell_in).to eq -24
      expect(item.quality).to eq 50
    end
    it "Day 27" do
      27.times { subject.update_quality }
      expect(item.sell_in).to eq -25
      expect(item.quality).to eq 50
    end
    it "Day 28" do
      28.times { subject.update_quality }
      expect(item.sell_in).to eq -26
      expect(item.quality).to eq 50
    end
    it "Day 29" do
      29.times { subject.update_quality }
      expect(item.sell_in).to eq -27
      expect(item.quality).to eq 50
    end
    it "Day 26" do
      30.times { subject.update_quality }
      expect(item.sell_in).to eq -28
      expect(item.quality).to eq 50
    end
  end

  describe "Elixir of the Mongoose" do
    let(:item) { subject.items[1] }
    it "Day 0" do
      expect(item.sell_in).to eq 2
      expect(item.quality).to eq 0
    end
    it "Day 1" do
      subject.update_quality
      expect(item.sell_in).to eq 1
      expect(item.quality).to eq 1
    end
    it "Day 2" do
      2.times { subject.update_quality }
      expect(item.sell_in).to eq 0
      expect(item.quality).to eq 2
    end
    it "Day 3" do
      3.times { subject.update_quality }
      expect(item.sell_in).to eq -1
      expect(item.quality).to eq 4
    end
    it "Day 4" do
      4.times { subject.update_quality }
      expect(item.sell_in).to eq -2
      expect(item.quality).to eq 6
    end
    it "Day 5" do
      5.times { subject.update_quality }
      expect(item.sell_in).to eq -3
      expect(item.quality).to eq 8
    end
    it "Day 6" do
      6.times { subject.update_quality }
      expect(item.sell_in).to eq -4
      expect(item.quality).to eq 10
    end
    it "Day 7" do
      7.times { subject.update_quality }
      expect(item.sell_in).to eq -5
      expect(item.quality).to eq 12
    end
    it "Day 8" do
      8.times { subject.update_quality }
      expect(item.sell_in).to eq -6
      expect(item.quality).to eq 14
    end
    it "Day 9" do
      9.times { subject.update_quality }
      expect(item.sell_in).to eq -7
      expect(item.quality).to eq 16
    end
    it "Day 10" do
      10.times { subject.update_quality }
      expect(item.sell_in).to eq -8
      expect(item.quality).to eq 18
    end
    it "Day 11" do
      11.times { subject.update_quality }
      expect(item.sell_in).to eq -9
      expect(item.quality).to eq 20
    end
    it "Day 12" do
      12.times { subject.update_quality }
      expect(item.sell_in).to eq -10
      expect(item.quality).to eq 22
    end
    it "Day 13" do
      13.times { subject.update_quality }
      expect(item.sell_in).to eq -11
      expect(item.quality).to eq 24
    end
    it "Day 14" do
      14.times { subject.update_quality }
      expect(item.sell_in).to eq -12
      expect(item.quality).to eq 26
    end
    it "Day 15" do
      15.times { subject.update_quality }
      expect(item.sell_in).to eq -13
      expect(item.quality).to eq 28
    end
    it "Day 16" do
      16.times { subject.update_quality }
      expect(item.sell_in).to eq -14
      expect(item.quality).to eq 30
    end
    it "Day 17" do
      17.times { subject.update_quality }
      expect(item.sell_in).to eq -15
      expect(item.quality).to eq 32
    end
    it "Day 18" do
      18.times { subject.update_quality }
      expect(item.sell_in).to eq -16
      expect(item.quality).to eq 34
    end
    it "Day 19" do
      19.times { subject.update_quality }
      expect(item.sell_in).to eq -17
      expect(item.quality).to eq 36
    end
    it "Day 20" do
      20.times { subject.update_quality }
      expect(item.sell_in).to eq -18
      expect(item.quality).to eq 38
    end
    it "Day 21" do
      21.times { subject.update_quality }
      expect(item.sell_in).to eq -19
      expect(item.quality).to eq 40
    end
    it "Day 22" do
      22.times { subject.update_quality }
      expect(item.sell_in).to eq -20
      expect(item.quality).to eq 42
    end
    it "Day 23" do
      23.times { subject.update_quality }
      expect(item.sell_in).to eq -21
      expect(item.quality).to eq 44
    end
    it "Day 24" do
      24.times { subject.update_quality }
      expect(item.sell_in).to eq -22
      expect(item.quality).to eq 46
    end
    it "Day 25" do
      25.times { subject.update_quality }
      expect(item.sell_in).to eq -23
      expect(item.quality).to eq 48
    end
    it "Day 26" do
      26.times { subject.update_quality }
      expect(item.sell_in).to eq -24
      expect(item.quality).to eq 50
    end
    it "Day 27" do
      27.times { subject.update_quality }
      expect(item.sell_in).to eq -25
      expect(item.quality).to eq 50
    end
    it "Day 28" do
      28.times { subject.update_quality }
      expect(item.sell_in).to eq -26
      expect(item.quality).to eq 50
    end
    it "Day 29" do
      29.times { subject.update_quality }
      expect(item.sell_in).to eq -27
      expect(item.quality).to eq 50
    end
    it "Day 26" do
      30.times { subject.update_quality }
      expect(item.sell_in).to eq -28
      expect(item.quality).to eq 50
    end
  end



  describe "#update_quality" do
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
