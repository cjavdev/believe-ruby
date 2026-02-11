# frozen_string_literal: true

module Believe
  module Resources
    class Conflicts
      # Get Ted Lasso-style advice for resolving conflicts.
      #
      # @overload resolve(conflict_type:, description:, parties_involved:, attempts_made: nil, request_options: {})
      #
      # @param conflict_type [Symbol, Believe::Models::ConflictResolveParams::ConflictType] Type of conflict
      #
      # @param description [String] Describe the conflict
      #
      # @param parties_involved [Array<String>] Who is involved in the conflict
      #
      # @param attempts_made [Array<String>, nil] What you've already tried
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::ConflictResolveResponse]
      #
      # @see Believe::Models::ConflictResolveParams
      def resolve(params)
        parsed, options = Believe::ConflictResolveParams.dump_request(params)
        @client.request(
          method: :post,
          path: "conflicts/resolve",
          body: parsed,
          model: Believe::Models::ConflictResolveResponse,
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
