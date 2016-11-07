include TemplatePattern

class StoreOrder
  def initialize(is_gift: false)
    @is_gift = is_gift
  end

  def process_order
    # choose_goods
    # process_payment
    # package if is_gift?
    # deliver

    pick_goods
    process_payment
    package if is_gift?
    send_out
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

  def send_out
    puts "Delivers in counter"
  end

  def is_gift?
    @is_gift
  end
end
