include TemplatePattern

class WebOrder
  def process_order
    pick_goods
    process_payment
    package
    send_out
  end
end
