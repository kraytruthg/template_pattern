class StoreOrder < TemplatePattern::OrderTemplate
  def initialize(is_gift: false)
    @is_gift = is_gift
  end

  private

  def handle_goods
    puts "Customer chooses item from shelf"
  end

  def process_payment
    puts "Pays at counter through POS"
  end

  def transfer
    puts "Delivers in counter"
  end

  def is_gift?
    @is_gift
  end
end
