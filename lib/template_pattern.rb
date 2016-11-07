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
      raise NotImplementedError
    end

    def process_payment
      raise NotImplementedError
    end

    def package
      raise NotImplementedError
    end

    def deliver
      raise NotImplementedError
    end

    def is_gift?
      true
    end
  end

end
