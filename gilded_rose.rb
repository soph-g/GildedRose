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

    for i in 0..(@items.size-1)
      item = items[i]
      if (item.name != "Sulfuras, Hand of Ragnaros")
        if (item.name != "Aged Brie" && item.name != "Backstage passes to a TAFKAL80ETC concert")
          if (item.quality > 0)
            decrease_quality(item, 1)
          end
        else
          if (under_quality_limit?(item))
            increase_quality(item, 1)
            if (item.name == "Backstage passes to a TAFKAL80ETC concert")
              if (under_quality_limit?(item))
                if (item.sell_in < 11)
                  increase_quality(item, 1)
                end
                if (item.sell_in < 6)
                  increase_quality(item, 1)
                end
              end
            end
          end
        end
        item.sell_in = item.sell_in - 1;
        if (item.sell_in < 0)
          if (item.name != "Aged Brie")
            if (item.name != "Backstage passes to a TAFKAL80ETC concert")
              if (item.quality > 0)
                decrease_quality(item, 1)
              end
            else
              decrease_quality(item, item.quality)
            end
          else
            if (under_quality_limit?(item))
              increase_quality(item, 1)
            end
          end
        end
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
