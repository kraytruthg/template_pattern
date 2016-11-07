class WebOrder < TemplatePattern::OrderTemplate
  private

  def handle_goods
    puts "Picks goods from warehouse"
  end

  def process_payment
    puts "Online payment through Netbanking"
  end

  def transfer
    puts "Ships the item through post to customer"
  end
end
