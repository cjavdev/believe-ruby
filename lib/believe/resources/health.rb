# frozen_string_literal: true

module Believe
  module Resources
    class Health
      # Check if the API is running and healthy.
      #
      # @overload check(request_options: {})
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object]
      #
      # @see ::Believe::Models::HealthCheckParams
      def check(params = {})
        @client.request(
          method: :get,
          path: "health",
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
