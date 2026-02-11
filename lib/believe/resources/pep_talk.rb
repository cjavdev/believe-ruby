# frozen_string_literal: true

module Believe
  module Resources
    class PepTalk
      # Get a motivational pep talk from Ted Lasso himself. By default returns the
      # complete pep talk. Add `?stream=true` to get Server-Sent Events (SSE) streaming
      # the pep talk chunk by chunk.
      #
      # @overload retrieve(stream: nil, request_options: {})
      #
      # @param stream [Boolean] If true, returns SSE stream instead of full response
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::PepTalkRetrieveResponse]
      #
      # @see Believe::Models::PepTalkRetrieveParams
      def retrieve(params = {})
        parsed, options = Believe::PepTalkRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "pep-talk",
          query: parsed,
          model: Believe::Models::PepTalkRetrieveResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Believe::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
