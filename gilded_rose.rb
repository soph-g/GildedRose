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
      item.sell_in = item.sell_in - 1
      if (item.name == "Aged Brie")
        default_quality_increase(item)
        if (item.sell_in < 0)
          default_quality_increase(item)
        end
      elsif (item.name == "Backstage passes to a TAFKAL80ETC concert")
        default_quality_increase(item)
        if (item.sell_in < 5)
          default_quality_increase(item)
        end
        if (item.sell_in < 10)
          default_quality_increase(item)
        end
        if (item.sell_in < 0)
          item.quality = item.quality - item.quality
        end
      elsif (item.quality > 0)
        item.quality = item.quality - 1
        if (item.sell_in < 0 && item.quality > 0)
          item.quality = item.quality - 1
        end
      end
    end
  end

  def default_quality_increase(item)
    if (item.quality < 50)
      item.quality += 1
    end
  end

end
