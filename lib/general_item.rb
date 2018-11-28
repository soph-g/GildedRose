class GeneralItem

  def initialize(item)
    @item = item
  end

  def decrease_sell_in
    @item.sell_in -= 1
  end

  def update_quality
    if (@item.quality > 0)
      @item.quality -= 1
    end
    if (@item.sell_in < 0 && @item.quality > 0)
      @item.quality -= 1
    end
  end

end
