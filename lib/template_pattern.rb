require "template_pattern/version"

module TemplatePattern
  # Your code goes here...
  def process_order
    choose_goods
    process_payment
    package if is_gift?
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
    fail NotImplementedError
  end

  def deliver
    fail NotImplementedError
  end

  def is_gift?
    fail NotImplementedError
  end
end
