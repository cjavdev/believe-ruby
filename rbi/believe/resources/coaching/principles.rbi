# typed: strong

module Believe
  module Resources
    class Coaching
      class Principles
        # Get details about a specific coaching principle.
        sig do
          params(
            principle_id: String,
            request_options: Believe::RequestOptions::OrHash
          ).returns(Believe::Coaching::CoachingPrinciple)
        end
        def retrieve(principle_id, request_options: {})
        end

        # Get a paginated list of Ted Lasso's core coaching principles and philosophy.
        sig do
          params(
            limit: Integer,
            skip: Integer,
            request_options: Believe::RequestOptions::OrHash
          ).returns(
            Believe::Internal::SkipLimitPage[
              Believe::Coaching::CoachingPrinciple
            ]
          )
        end
        def list(
          # Maximum number of items to return (max: 100)
          limit: nil,
          # Number of items to skip (offset)
          skip: nil,
          request_options: {}
        )
        end

        # Get a random coaching principle to inspire your day.
        sig do
          params(request_options: Believe::RequestOptions::OrHash).returns(
            Believe::Coaching::CoachingPrinciple
          )
        end
        def get_random(request_options: {})
        end

        # @api private
        sig { params(client: Believe::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
