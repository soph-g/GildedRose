class Conjured

  def initialize(item)
    @item = item
  end

  def update_sell_in
    @item.sell_in -= 1
  end

  def update_quality
    reduce_quality
    if (@item.sell_in < 0)
      reduce_quality
    end
  end

  private

  def reduce_quality
    if (@item.quality > 0)
      @item.quality -= 2
    end
  end
end
