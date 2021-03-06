require 'pact_broker/pacts/selectors'
require 'pact_broker/pacts/selector'

module PactBroker
  module Pacts
    describe Selectors do
      let(:selector_1) { Selector.overall_latest }
      let(:selector_2) { Selector.latest_for_tag('dev') }
      let(:selectors_1) { Selectors.new([selector_1]) }
      let(:selectors_2) { Selectors.new([selector_2]) }
      let(:selectors_array) { [selectors_1, selectors_2] }

      describe "+" do
        it "returns an object of type Selector" do
          expect(selectors_1 + selectors_2).to be_a(Selectors)
        end
      end
    end
  end
end
