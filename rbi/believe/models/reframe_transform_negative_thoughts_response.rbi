# typed: strong

module Believe
  module Models
    class ReframeTransformNegativeThoughtsResponse < ::Believe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ::Believe::Models::ReframeTransformNegativeThoughtsResponse,
            ::Believe::Internal::AnyHash
          )
        end

      # A daily affirmation to practice
      sig { returns(String) }
      attr_accessor :daily_affirmation

      # The original negative thought
      sig { returns(String) }
      attr_accessor :original_thought

      # The thought reframed positively
      sig { returns(String) }
      attr_accessor :reframed_thought

      # Ted's take on this thought
      sig { returns(String) }
      attr_accessor :ted_perspective

      # Dr. Sharon's therapeutic insight
      sig { returns(T.nilable(String)) }
      attr_accessor :dr_sharon_insight

      # Reframed perspective response.
      sig do
        params(
          daily_affirmation: String,
          original_thought: String,
          reframed_thought: String,
          ted_perspective: String,
          dr_sharon_insight: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # A daily affirmation to practice
        daily_affirmation:,
        # The original negative thought
        original_thought:,
        # The thought reframed positively
        reframed_thought:,
        # Ted's take on this thought
        ted_perspective:,
        # Dr. Sharon's therapeutic insight
        dr_sharon_insight: nil
      )
      end

      sig do
        override.returns(
          {
            daily_affirmation: String,
            original_thought: String,
            reframed_thought: String,
            ted_perspective: String,
            dr_sharon_insight: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
