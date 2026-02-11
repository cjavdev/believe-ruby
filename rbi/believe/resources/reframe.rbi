# typed: strong

module Believe
  module Resources
    class Reframe
      # Transform negative thoughts into positive perspectives with Ted's help.
      sig do
        params(
          negative_thought: String,
          recurring: T::Boolean,
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Models::ReframeTransformNegativeThoughtsResponse)
      end
      def transform_negative_thoughts(
        # The negative thought to reframe
        negative_thought:,
        # Is this a recurring thought?
        recurring: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
