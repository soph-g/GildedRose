require './item.rb'

class GildedRose

  attr_reader :items

  def initialize
    @items = []
    @items << Item.new("+5 Dexterity Vest", 10, 20)
    @items << Item.new("Aged Brie", 2, 0)
    @items << Item.new("Elixir of the Mongoose", 5, 7)
    @items << Item.new("Sulfuras, Hand of Ragnaros", 0, 80)
    @items << Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 20)
    @items << Item.new("Conjured Mana Cake", 3, 6)
  end

  def update_quality
    @items.each do |item|
      if (item.name == "Sulfuras, Hand of Ragnaros")
        next
      end
      if (item.name == "Aged Brie" && item.quality < 50)
        item.quality = item.quality + 1
      elsif (item.name == "Backstage passes to a TAFKAL80ETC concert" && item.quality < 50)
        item.quality = item.quality + 1
        if (item.sell_in < 6 && item.quality < 50)
          item.quality = item.quality + 1
        end
        if (item.sell_in < 11 && item.quality < 50)
          item.quality = item.quality + 1
        end
      else
        if (item.quality > 0)
          item.quality = item.quality - 1
        end
      end
      item.sell_in = item.sell_in - 1;
      if (item.sell_in < 0)
        if (item.name == "Backstage passes to a TAFKAL80ETC concert")
          item.quality = item.quality - item.quality
        elsif (item.name == "Aged Brie")
          if (item.quality < 50)
            item.quality = item.quality + 1
          end
        elsif (item.quality > 0)
          item.quality = item.quality - 1
        end
      end
    end
  end

end
