require "template_pattern/version"

module TemplatePattern
  class Base

    def initialize
    end

    def process_order
      choose_goods
      process_payment
      package if is_gift?
      deliver
    end

    private

    def choose_goods
      puts "Customer chooses item from shelf"
    end

    def process_payment
      puts "Pays at counter through POS"
    end

    def package
      puts "Wraps goods"
    end

    def deliver
      puts "Delivers in counter"
    end

    def is_gift?
      true
    end
  end

end
