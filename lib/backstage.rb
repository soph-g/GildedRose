class Backstage
  def initialize(item)
    @item = item
  end

  def update_sell_in
    @item.sell_in -= 1
  end

  def update_quality
    if (@item.quality < 50)
      @item.quality += 1
    end
    if (@item.sell_in < 5 && @item.quality < 50)
      @item.quality += 1
    end
    if (@item.sell_in < 10 && @item.quality < 50)
      @item.quality += 1
    end
    if (@item.sell_in < 0)
      @item.quality -= @item.quality
    end
  end

end
