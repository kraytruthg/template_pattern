require "template_pattern/version"

module TemplatePattern
  def process_order
    pick_goods
    process_payment
    package
    send_out
  end

  def pick_goods
    raise NotImplementedError
  end
  def process_payment
    raise NotImplementedError
  end
  def package
    raise NotImplementedError
  end
  def send_out
    raise NotImplementedError
  end
end
