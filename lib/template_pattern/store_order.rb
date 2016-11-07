class StoreOrder < TemplatePattern::Base

  def initialize(is_gift: false)
    @is_gift = is_gift
  end

  private

  def is_gift?
    @is_gift
  end

end
