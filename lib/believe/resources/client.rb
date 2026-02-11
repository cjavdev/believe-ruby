# frozen_string_literal: true

module Believe
  module Resources
    class Client
      # @return [Believe::Resources::Client::Ws]
      attr_reader :ws

      # @api private
      #
      # @param client [Believe::Client]
      def initialize(client:)
        @client = client
        @ws = Believe::Resources::Client::Ws.new(client: client)
      end
    end
  end
end
