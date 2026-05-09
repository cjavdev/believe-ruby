# frozen_string_literal: true

module Believe
  module Resources
    # Server-Sent Events (SSE) streaming endpoints
    class Stream
      # A simple SSE test endpoint that streams numbers 1-5.
      #
      # @overload test_connection(request_options: {})
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see ::Believe::Models::StreamTestConnectionParams
      def test_connection(params = {})
        @client.request(
          method: :get,
          path: "stream/test",
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
