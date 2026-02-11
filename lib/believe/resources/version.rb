# frozen_string_literal: true

module Believe
  module Resources
    class Version
      # Get detailed information about API versioning.
      #
      # @overload retrieve(request_options: {})
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see Believe::Models::VersionRetrieveParams
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "version",
          model: Believe::Internal::Type::Unknown,
          options: params[:request_options]
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
