class WebOrder
  def process_order
    pick_goods
    process_payment
    package
    deliver
  end

  private

  def pick_goods
    puts "Picks goods from warehouse"
  end

  def process_payment
    puts "Online payment through Netbanking"
  end

  def package
    puts "Wraps goods"
  end

  def deliver
    puts "Ships the item through post to customer"
  end
end
