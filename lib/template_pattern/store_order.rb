class StoreOrder
  include TemplatePattern

  private

  def pick_goods
    puts "Customer chooses item from shelf"
  end

  def process_payment
    puts "Pays at counter through POS"
  end

  def package
    puts "Wraps goods" if @is_gift
  end

  def send_out
    puts "Delivers in counter"
  end
end
