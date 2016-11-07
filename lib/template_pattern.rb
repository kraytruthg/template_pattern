require "template_pattern/version"
require "processes"

module WhatTheHellIsThis
  PROCESS_PIPELINE = {
    web: [
      Processes::GoodPicker::Warehouse,
      Processes::PaymentProcessor::NetBanking,
      Processes::PackageManager::Wrap,
      Processes::DeliverErrands::Post
    ],
    store: [
      Processes::GoodPicker::Shelf,
      Processes::PaymentProcessor::Pos,
      Processes::PackageManager::WrapIfGift,
      Processes::DeliverErrands::Counter
    ]
  }

  module OrderProcessor
    def self.process(type, **opts)
      PROCESS_PIPELINE[type].each { |process| process.call(opts) }
    end
  end
end
