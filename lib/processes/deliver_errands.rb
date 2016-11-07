module Processes
  module DeliverErrands
    Post = proc { |opts| puts "Ships the item through post to customer" }
    Counter = proc { |opts| puts "Delivers in counter" }
  end
end
