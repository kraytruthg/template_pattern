require 'spec_helper'

class Ot1 < TemplatePattern::OrderTemplate
end

class Ot2 < TemplatePattern::OrderTemplate
  def handle_goods
    puts 'lala'
  end
end

class Ot3 < TemplatePattern::OrderTemplate
  def handle_goods
    puts 'lala'
  end

  def process_payment
    puts 'wawa'
  end
end

class Ot4 < TemplatePattern::OrderTemplate
  def handle_goods
    puts 'lala'
  end

  def process_payment
    puts 'wawa'
  end

  def transfer
    puts 'haha'
  end
end

class Ot5 < TemplatePattern::OrderTemplate
  def handle_goods
    puts 'lala'
  end

  def process_payment
    puts 'wawa'
  end

  def transfer
    puts 'haha'
  end

  def is_gift?
    false
  end
end

describe TemplatePattern::OrderTemplate do
  let(:ot) { TemplatePattern::OrderTemplate.new }

  it 'should raise an implement error if "handle_goods" is not implement' do
    ot1 = Ot1.new
    expect { ot1.process_order }.to raise_error(/You should implement this method!!/)
  end

  it 'should raise an implement error if "process_payment" is not implement' do
    ot2 = Ot2.new
    expect { ot2.process_order }.to raise_error(/You should implement this method!!/)
  end

  it 'should raise an implement error if "transfer" is not implement' do
    ot3 = Ot3.new
    expect { ot3.process_order }.to raise_error(/You should implement this method!!/)
  end

  it 'should run all processes by default' do
    ot4 = Ot4.new
    expect { ot4.process_order }.to output("lala\nwawa\nWraps goods\nhaha\n").to_stdout
  end

  it 'should skip package if is_gift? is false' do
    ot4 = Ot5.new
    expect { ot4.process_order }.to output("lala\nwawa\nhaha\n").to_stdout
  end
end
