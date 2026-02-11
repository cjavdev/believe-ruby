# typed: strong

module Believe
  module Resources
    class Stream
      # A simple SSE test endpoint that streams numbers 1-5.
      sig do
        params(request_options: Believe::RequestOptions::OrHash).returns(
          T.anything
        )
      end
      def test_connection(request_options: {})
      end

      # @api private
      sig { params(client: Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
