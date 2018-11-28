require_relative './item.rb'
require_relative './sulfuras'
require_relative './general_item'
require_relative './backstage'
require_relative './aged_brie'

class GildedRose

  attr_reader :items

  ITEM_HANDLERS = {
    "Aged Brie" => AgedBrie,
    "+5 Dexterity Vest" => GeneralItem,
    "Elixir of the Mongoose" => GeneralItem,
    "Conjured Mana Cake" => GeneralItem,
    "Sulfuras, Hand of Ragnaros" => Sulfuras,
    "Backstage passes to a TAFKAL80ETC concert" => Backstage,
  }

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
      item_handler = ITEM_HANDLERS[item.name].new(item)
      item_handler.update_sell_in
      item_handler.update_quality
    end
  end
end
