# typed: strong

module Believe
  module Models
    CoachingPrinciple = Coaching::CoachingPrinciple

    module Coaching
      class CoachingPrinciple < ::Believe::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(::Believe::Coaching::CoachingPrinciple, ::Believe::Internal::AnyHash) }

        # Principle identifier
        sig { returns(String) }
        attr_accessor :id

        # How to apply this principle
        sig { returns(String) }
        attr_accessor :application

        # Example from the show
        sig { returns(String) }
        attr_accessor :example_from_show

        # What this principle means
        sig { returns(String) }
        attr_accessor :explanation

        # The coaching principle
        sig { returns(String) }
        attr_accessor :principle

        # Related Ted quote
        sig { returns(String) }
        attr_accessor :ted_quote

        # A Ted Lasso coaching principle.
        sig do
          params(
            id: String,
            application: String,
            example_from_show: String,
            explanation: String,
            principle: String,
            ted_quote: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          # Principle identifier
        id:,
          # How to apply this principle
        application:,
          # Example from the show
        example_from_show:,
          # What this principle means
        explanation:,
          # The coaching principle
        principle:,
          # Related Ted quote
        ted_quote:
        ); end

        sig do
          override
            .returns(
              {
                id: String,
                application: String,
                example_from_show: String,
                explanation: String,
                principle: String,
                ted_quote: String
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
