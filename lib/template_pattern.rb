require "template_pattern/version"

module TemplatePattern
  # Your code goes here...
  class OrderTemplate
    def process_order
      handle_goods
      process_payment
      package if is_gift?
      transfer
    end

    private


    def handle_goods
      fail 'You should implement this method!!'
    end

    def process_payment
      fail 'You should implement this method!!'
    end

    def package
      puts "Wraps goods"
    end

    def transfer
      fail 'You should implement this method!!'
    end

    def is_gift?
      true
    end
  end
end
