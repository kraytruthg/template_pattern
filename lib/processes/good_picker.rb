module Processes
  module GoodPicker
    Warehouse = proc { |opts| puts "Picks goods from warehouse" }
    Shelf = proc { |opts| puts "Customer chooses item from shelf" }
  end
end
