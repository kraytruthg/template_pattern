require "template_pattern/version"

module TemplatePattern
  def initialize(is_gift: false)
    @is_gift = is_gift
  end

  def process_order
    pick_goods
    process_payment
    package
    send_out
  end

private

  def pick_goods
    fail NotImplementedError
  end

  def process_payment
    fail NotImplementedError
  end

  def package
    fail NotImplementedError
  end

  def send_out
    fail NotImplementedError
  end
end
