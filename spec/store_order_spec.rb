require "spec_helper"
require "template_pattern/store_order"

describe StoreOrder do
  describe "#process_order" do
    it "outputs process flow" do
      expect { StoreOrder.new.process_order }.to output(
        "Customer chooses item from shelf\nPays at counter through POS\nWraps goods\nDelivers in counter\n"
      ).to_stdout
    end
  end
end
