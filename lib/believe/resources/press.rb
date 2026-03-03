# frozen_string_literal: true

module Believe
  module Resources
    # Interactive endpoints for motivation and guidance
    class Press
      # Get Ted's response to press conference questions.
      #
      # @overload simulate(question:, hostile: nil, topic: nil, request_options: {})
      #
      # @param question [String] The press question to answer
      #
      # @param hostile [Boolean] Is this a hostile question from Trent Crimm?
      #
      # @param topic [String, nil] Topic category
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::PressSimulateResponse]
      #
      # @see Believe::Models::PressSimulateParams
      def simulate(params)
        parsed, options = Believe::PressSimulateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "press",
          body: parsed,
          model: Believe::Models::PressSimulateResponse,
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
