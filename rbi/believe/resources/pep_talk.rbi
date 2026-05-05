# typed: strong

module Believe
  module Resources
    # Server-Sent Events (SSE) streaming endpoints
    class PepTalk
      # Get a motivational pep talk from Ted Lasso himself. By default returns the
      # complete pep talk. Add `?stream=true` to get Server-Sent Events (SSE) streaming
      # the pep talk chunk by chunk.
      sig do
        params(
          stream: T::Boolean,
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Models::PepTalkRetrieveResponse)
      end
      def retrieve(
        # If true, returns SSE stream instead of full response
        stream: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ::Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
