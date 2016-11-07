class StoreOrder
  include TemplatePattern

  def initialize(is_gift: false)
    @is_gift = is_gift
  end

  private

  def pick_goods
    puts "Customer chooses item from shelf"
  end

  def process_payment
    puts "Pays at counter through POS"
  end

  def deliver
    puts "Delivers in counter"
  end

  def is_gift?
    @is_gift
  end
end
