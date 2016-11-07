require "spec_helper"
require "template_pattern/web_order"

describe "WebOrder" do
  describe "#process_order" do
    it "outputs process flow" do
      expect { WhatTheHellIsThis::OrderProcessor.process(:web) }.to output(
        "Picks goods from warehouse\nOnline payment through Netbanking\nWraps goods\nShips the item through post to customer\n"
      ).to_stdout
    end
  end
end
