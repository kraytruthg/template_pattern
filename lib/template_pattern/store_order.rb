class StoreOrder
  def process_order
    pick_goods
    process_payment
    package
    deliver
  end

  private

  def pick_goods
    puts "Customer chooses item from shelf"
  end

  def process_payment
    puts "Pays at counter through POS"
  end

  def package
    puts "Wraps goods"
  end

  def deliver
    puts "Delivers in counter"
  end
end
