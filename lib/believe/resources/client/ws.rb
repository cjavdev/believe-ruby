# frozen_string_literal: true

module Believe
  module Resources
    class Client
      class Ws
        # @api private
        #
        # @param client [Believe::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
