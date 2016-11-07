class WebOrder
  include TemplatePattern

  private

  def pick_goods
    puts "Picks goods from warehouse"
  end

  def process_payment
    puts "Online payment through Netbanking"
  end

  def deliver
    puts "Ships the item through post to customer"
  end
end
