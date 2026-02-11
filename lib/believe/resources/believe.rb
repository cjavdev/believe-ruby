# frozen_string_literal: true

module Believe
  module Resources
    class Believe
      # Submit your situation and receive Ted Lasso-style motivational guidance.
      #
      # @overload submit(situation:, situation_type:, context: nil, intensity: nil, request_options: {})
      #
      # @param situation [String] Describe your situation
      #
      # @param situation_type [Symbol, Believe::Models::BelieveSubmitParams::SituationType] Type of situation
      #
      # @param context [String, nil] Additional context
      #
      # @param intensity [Integer] How intense is the response needed (1=gentle, 10=full Ted)
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::BelieveSubmitResponse]
      #
      # @see Believe::Models::BelieveSubmitParams
      def submit(params)
        parsed, options = Believe::BelieveSubmitParams.dump_request(params)
        @client.request(
          method: :post,
          path: "believe",
          body: parsed,
          model: Believe::Models::BelieveSubmitResponse,
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
