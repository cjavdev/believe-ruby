# typed: strong

module Believe
  module Resources
    class Client
      sig { returns(Believe::Resources::Client::Ws) }
      attr_reader :ws

      # @api private
      sig { params(client: Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
