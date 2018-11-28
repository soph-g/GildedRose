class Backstage
  def initialize(item)
    @item = item
  end

  def update_sell_in
    @item.sell_in -= 1
  end

  def update_quality
    increase_quality
    increase_quality if (@item.sell_in < 5)
    increase_quality if (@item.sell_in < 10)
    decrease_quality
  end

  private

  def increase_quality
    @item.quality += 1 if (@item.quality < 50)
  end

  def decrease_quality
    @item.quality -= @item.quality if (@item.sell_in < 0)
  end

end
