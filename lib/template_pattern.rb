require "template_pattern/version"

module TemplatePattern
  class Order
    attr_reader :opts

    def initialize(**opts)
      @opts = opts
    end

    def process_order
      pick_goods
      process_payment
      package
      deliver
    end

    private

    def collect_goods
      fail NotImplementedError
    end

    def process_payment
      fail NotImplementedError
    end

    def package
      fail NotImplementedError
    end

    def deliver
      fail NotImplementedError
    end
  end
end
