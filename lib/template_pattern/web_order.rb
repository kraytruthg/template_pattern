class WebOrder < TemplatePattern::Order
  private

  def choose_goods
    puts "Picks goods from warehouse"
  end

  def process_payment
    puts "Online payment through Netbanking"
  end

  def deliver
    send_out
  end

  def send_out
    puts "Ships the item through post to customer"
  end

  def is_gift?
    true
  end
end
