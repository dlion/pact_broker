require 'padrino-core'
require 'haml'
require 'pact_broker/services'

module PactBroker
  module UI
    module Controllers
      class Clusters < Padrino::Application

        set :root, File.join(File.dirname(__FILE__), '..')

        class Cluster

          def initialize pacticipants, relationships

          end

        end

        get "/" do
          view_model = ViewDomain::IndexItems.new(pacticipant_service.find_index_items)
          haml 'clusters/show', locals: {relationships: view_model}
        end

      end
    end
  end
end