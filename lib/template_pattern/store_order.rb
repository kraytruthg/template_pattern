class StoreOrder < TemplatePattern::Order

  private

  def choose_goods
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
