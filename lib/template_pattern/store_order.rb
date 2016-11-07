class StoreOrder
  include TemplatePattern
  def initialize(is_gift: false)
    @is_gift = is_gift
  end

  private

  def pick_goods
    puts "Customer chooses item from shelf"
  end

  def process_payment
    puts "Pays at counter through POS"
  end

  def package
    if @is_gift
      puts "Wraps goods"
    else
      return nil
    end
  end

  def send_out
    puts "Delivers in counter"
  end

  def is_gift?
    @is_gift
  end
end
