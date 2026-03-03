# frozen_string_literal: true

module Believe
  module Resources
    # Interactive endpoints for motivation and guidance
    class Reframe
      # Transform negative thoughts into positive perspectives with Ted's help.
      #
      # @overload transform_negative_thoughts(negative_thought:, recurring: nil, request_options: {})
      #
      # @param negative_thought [String] The negative thought to reframe
      #
      # @param recurring [Boolean] Is this a recurring thought?
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::ReframeTransformNegativeThoughtsResponse]
      #
      # @see Believe::Models::ReframeTransformNegativeThoughtsParams
      def transform_negative_thoughts(params)
        parsed, options = Believe::ReframeTransformNegativeThoughtsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "reframe",
          body: parsed,
          model: Believe::Models::ReframeTransformNegativeThoughtsResponse,
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
