module Processes
  module PaymentProcessor
    NetBanking = proc { |opts| puts "Online payment through Netbanking" }
    Pos = proc { |opts| puts "Pays at counter through POS" }
  end
end
