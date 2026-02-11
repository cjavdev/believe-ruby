# typed: strong

module Believe
  module Resources
    class Matches
      class Commentary
        # Stream live match commentary for a specific match. Uses Server-Sent Events (SSE)
        # to stream commentary events in real-time.
        sig do
          params(
            match_id: String,
            request_options: Believe::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def stream(match_id, request_options: {})
        end

        # @api private
        sig { params(client: Believe::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
