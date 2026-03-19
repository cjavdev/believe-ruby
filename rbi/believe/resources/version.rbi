# typed: strong

module Believe
  module Resources
    class Version
      # Get detailed information about API versioning.
      sig do
        params(request_options: Believe::RequestOptions::OrHash).returns(
          T.anything
        )
      end
      def retrieve(request_options: {})
      end

      # @api private
      sig { params(client: Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
