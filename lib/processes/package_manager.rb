module Processes
  module PackageManager
    Wrap = proc { |opts| puts "Wraps goods" }
    WrapIfGift = proc { |opts| puts "Wraps goods" if opts[:is_gift] }
  end
end
