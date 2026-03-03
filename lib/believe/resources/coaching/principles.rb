# frozen_string_literal: true

module Believe
  module Resources
    class Coaching
      # Interactive endpoints for motivation and guidance
      class Principles
        # Get details about a specific coaching principle.
        #
        # @overload retrieve(principle_id, request_options: {})
        #
        # @param principle_id [String]
        # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Believe::Models::Coaching::CoachingPrinciple]
        #
        # @see Believe::Models::Coaching::PrincipleRetrieveParams
        def retrieve(principle_id, params = {})
          @client.request(
            method: :get,
            path: ["coaching/principles/%1$s", principle_id],
            model: Believe::Coaching::CoachingPrinciple,
            options: params[:request_options]
          )
        end

        # Get a paginated list of Ted Lasso's core coaching principles and philosophy.
        #
        # @overload list(limit: nil, skip: nil, request_options: {})
        #
        # @param limit [Integer] Maximum number of items to return (max: 100)
        #
        # @param skip [Integer] Number of items to skip (offset)
        #
        # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Believe::Internal::SkipLimitPage<Believe::Models::Coaching::CoachingPrinciple>]
        #
        # @see Believe::Models::Coaching::PrincipleListParams
        def list(params = {})
          parsed, options = Believe::Coaching::PrincipleListParams.dump_request(params)
          query = Believe::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "coaching/principles",
            query: query,
            page: Believe::Internal::SkipLimitPage,
            model: Believe::Coaching::CoachingPrinciple,
            options: options
          )
        end

        # Get a random coaching principle to inspire your day.
        #
        # @overload get_random(request_options: {})
        #
        # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Believe::Models::Coaching::CoachingPrinciple]
        #
        # @see Believe::Models::Coaching::PrincipleGetRandomParams
        def get_random(params = {})
          @client.request(
            method: :get,
            path: "coaching/principles/random",
            model: Believe::Coaching::CoachingPrinciple,
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
end
