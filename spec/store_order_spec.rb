require "spec_helper"
require "template_pattern"

describe "StoreOrder" do
  describe "#process_order" do
    it "outputs process flow" do
      expect { WhatTheHellIsThis::OrderProcessor.process(:store) }.to output(
        "Customer chooses item from shelf\nPays at counter through POS\nDelivers in counter\n"
      ).to_stdout
    end

    context "when it is gift order" do
      it "outputs process flow" do
        expect { WhatTheHellIsThis::OrderProcessor.process(:store, is_gift: true) }.to output(
          "Customer chooses item from shelf\nPays at counter through POS\nWraps goods\nDelivers in counter\n"
        ).to_stdout
      end
    end
  end
end
