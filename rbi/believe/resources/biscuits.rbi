# typed: strong

module Believe
  module Resources
    # Interactive endpoints for motivation and guidance
    class Biscuits
      # Get a specific type of biscuit by ID.
      sig do
        params(
          biscuit_id: String,
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Biscuit)
      end
      def retrieve(biscuit_id, request_options: {})
      end

      # Get a paginated list of Ted's famous homemade biscuits! Each comes with a
      # heartwarming message.
      sig do
        params(
          limit: Integer,
          skip: Integer,
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Internal::SkipLimitPage[Believe::Biscuit])
      end
      def list(
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Number of items to skip (offset)
        skip: nil,
        request_options: {}
      )
      end

      # Get a single fresh biscuit with a personalized message from Ted.
      sig do
        params(request_options: Believe::RequestOptions::OrHash).returns(
          Believe::Biscuit
        )
      end
      def get_fresh(request_options: {})
      end

      # @api private
      sig { params(client: Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
