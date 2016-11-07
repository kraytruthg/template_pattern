class WebOrder

  include TemplatePattern

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

  def send_out
    puts "Ships the item through post to customer"
  end
end
