# typed: strong

module Believe
  module Models
    class BelieveSubmitResponse < Believe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Believe::Models::BelieveSubmitResponse,
            Believe::Internal::AnyHash
          )
        end

      # Suggested action to take
      sig { returns(String) }
      attr_accessor :action_suggestion

      # Your current believe-o-meter score
      sig { returns(Integer) }
      attr_accessor :believe_score

      # A reminder to have a goldfish memory when needed
      sig { returns(String) }
      attr_accessor :goldfish_wisdom

      # A relevant Ted Lasso quote
      sig { returns(String) }
      attr_accessor :relevant_quote

      # Ted's motivational response
      sig { returns(String) }
      attr_accessor :ted_response

      # Response from the Believe Engine.
      sig do
        params(
          action_suggestion: String,
          believe_score: Integer,
          goldfish_wisdom: String,
          relevant_quote: String,
          ted_response: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Suggested action to take
        action_suggestion:,
        # Your current believe-o-meter score
        believe_score:,
        # A reminder to have a goldfish memory when needed
        goldfish_wisdom:,
        # A relevant Ted Lasso quote
        relevant_quote:,
        # Ted's motivational response
        ted_response:
      )
      end

      sig do
        override.returns(
          {
            action_suggestion: String,
            believe_score: Integer,
            goldfish_wisdom: String,
            relevant_quote: String,
            ted_response: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
