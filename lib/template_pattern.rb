require "template_pattern/version"

module TemplatePattern
  def process_order
    pick_goods
    process_payment
    package if is_gift?
    deliver
  end

  def pick_goods
    fail NotImplementedError
  end

  def process_payment
    fail NotImplementedError
  end

  def package
    puts "Wraps goods"
  end

  def deliver
    fail NotImplementedError
  end

  def is_gift?
    true
  end
end
