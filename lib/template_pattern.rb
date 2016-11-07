require "template_pattern/version"
module TemplatePattern
  class Order
    def process_order
      choose_goods
      process_payment
      package  if is_gift?
      deliver
    end

    private

    def choose_goods
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

end
