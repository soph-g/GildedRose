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
      item.sell_in -= 1;
      if (item.sell_in < 0 && item.quality > 0)
        decrease_quality(item, 1)
      end
      if (item.name == "Aged Brie" && under_quality_limit?(item))
        increase_quality(item, 1)
        if (item.sell_in <= 0)
          increase_quality(item, 1)
        end
      elsif (item.name == "Backstage passes to a TAFKAL80ETC concert")
        increase_quality(item, 1)
        if (under_quality_limit?(item) && item.sell_in < 10)
          increase_quality(item, 1)
          if (item.sell_in < 5)
            increase_quality(item, 1)
          end
          if (item.sell_in <= 0)
            decrease_quality(item, item.quality)
          end
        end
      elsif (item.quality > 0)
        decrease_quality(item, 1)
      end
    end
  end

  private

  def increase_quality(item, amount)
    item.quality += amount
  end

  def decrease_quality(item, amount)
    item.quality -= amount
  end

  def under_quality_limit?(item)
    item.quality < 50
  end
end
