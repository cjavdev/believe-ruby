# typed: strong

module Believe
  module Resources
    class Client
      # WebSocket endpoints for real-time bidirectional communication - Live match
      # simulation
      sig { returns(Believe::Resources::Client::Ws) }
      attr_reader :ws

      # Ticket sales with 300 records for practicing pagination, filtering, and
      # financial data
      sig { returns(Believe::Resources::Client::TicketSales) }
      attr_reader :ticket_sales

      # @api private
      sig { params(client: Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
