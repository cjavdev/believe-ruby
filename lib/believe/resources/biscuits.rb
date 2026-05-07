# frozen_string_literal: true

module Believe
  module Resources
    # Interactive endpoints for motivation and guidance
    class Biscuits
      # Get a specific type of biscuit by ID.
      #
      # @overload retrieve(biscuit_id, request_options: {})
      #
      # @param biscuit_id [String]
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Models::Biscuit]
      #
      # @see ::Believe::Models::BiscuitRetrieveParams
      def retrieve(biscuit_id, params = {})
        @client.request(
          method: :get,
          path: ["biscuits/%1$s", biscuit_id],
          model: ::Believe::Biscuit,
          options: params[:request_options]
        )
      end

      # Get a paginated list of Ted's famous homemade biscuits! Each comes with a heartwarming message.
      #
      # @overload list(limit: nil, skip: nil, request_options: {})
      #
      # @param limit [Integer] Maximum number of items to return (max: 100)
      #
      # @param skip [Integer] Number of items to skip (offset)
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Internal::SkipLimitPage<::Believe::Models::Biscuit>]
      #
      # @see ::Believe::Models::BiscuitListParams
      def list(params = {})
        parsed, options = ::Believe::BiscuitListParams.dump_request(params)
        query = ::Believe::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "biscuits",
          query: query,
          page: ::Believe::Internal::SkipLimitPage,
          model: ::Believe::Biscuit,
          options: options
        )
      end

      # Get a single fresh biscuit with a personalized message from Ted.
      #
      # @overload get_fresh(request_options: {})
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Models::Biscuit]
      #
      # @see ::Believe::Models::BiscuitGetFreshParams
      def get_fresh(params = {})
        @client.request(
          method: :get,
          path: "biscuits/fresh",
          model: ::Believe::Biscuit,
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
