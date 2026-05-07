# frozen_string_literal: true

module Believe
  module Resources
    class Matches
      # Server-Sent Events (SSE) streaming endpoints
      class Commentary
        # Stream live match commentary for a specific match. Uses Server-Sent Events (SSE) to stream commentary events in real-time.
        #
        # @overload stream(match_id, request_options: {})
        #
        # @param match_id [String]
        # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see ::Believe::Models::Matches::CommentaryStreamParams
        def stream(match_id, params = {})
          @client.request(
            method: :post,
            path: ["matches/%1$s/commentary/stream", match_id],
            model: ::Believe::Internal::Type::Unknown,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [::Believe::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
