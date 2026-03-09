# frozen_string_literal: true

module Believe
  module Resources
    class Client
      # WebSocket endpoints for real-time bidirectional communication - Live match
      # simulation
      # @return [Believe::Resources::Client::Ws]
      attr_reader :ws

      # Ticket sales with 300 records for practicing pagination, filtering, and
      # financial data
      # @return [Believe::Resources::Client::TicketSales]
      attr_reader :ticket_sales

      # @api private
      #
      # @param client [Believe::Client]
      def initialize(client:)
        @client = client
        @ws = Believe::Resources::Client::Ws.new(client: client)
        @ticket_sales = Believe::Resources::Client::TicketSales.new(client: client)
      end
    end
  end
end
