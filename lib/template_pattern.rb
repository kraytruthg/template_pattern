require "template_pattern/version"

module TemplatePattern
  class Order

    def initialize(is_gift: false)
      @is_gift = is_gift
    end

    def process_order
      choose_goods
      process_payment
      package
      deliver
    end

    private

    def choose_goods
      raise NotImplementedError
    end

    def process_payment
      raise NotImplementedError
    end

    def package
      puts "Wraps goods" if is_gift?
    end

    def deliver
      raise NotImplementedError
    end

    def is_gift?
      raise NotImplementedError
    end
  end

end
