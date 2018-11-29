class Conjured

  def initialize(item)
    @item = item
  end

  def update_sell_in
    @item.sell_in -= 1
  end

  def update_quality
    reduce_quality
    reduce_quality if (@item.sell_in < 0)
  end

  private

  def reduce_quality
    @item.quality -= 1 if (@item.quality > 0)
    @item.quality -= 1 if (@item.quality > 0)
  end
end
