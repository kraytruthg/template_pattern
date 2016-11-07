class StoreOrder < TemplatePattern::Order
  private

  def pick_goods
    puts "Customer chooses item from shelf"
  end

  def process_payment
    puts "Pays at counter through POS"
  end

  def package
    puts "Wraps goods" if is_gift?
  end

  def deliver
    puts "Delivers in counter"
  end

  def is_gift?
    opts[:is_gift]
  end
end
