# typed: strong

module Believe
  module Models
    class ConflictResolveResponse < ::Believe::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(::Believe::Models::ConflictResolveResponse, ::Believe::Internal::AnyHash) }

      # A folksy metaphor to remember
      sig { returns(String) }
      attr_accessor :barbecue_sauce_wisdom

      # Understanding the root cause
      sig { returns(String) }
      attr_accessor :diagnosis

      # Advice from the Diamond Dogs support group
      sig { returns(String) }
      attr_accessor :diamond_dogs_advice

      # What resolution could look like
      sig { returns(String) }
      attr_accessor :potential_outcome

      # Concrete steps to resolve the conflict
      sig { returns(T::Array[String]) }
      attr_accessor :steps_to_resolution

      # How Ted would handle this
      sig { returns(String) }
      attr_accessor :ted_approach

      # Conflict resolution response.
      sig do
        params(
          barbecue_sauce_wisdom: String,
          diagnosis: String,
          diamond_dogs_advice: String,
          potential_outcome: String,
          steps_to_resolution: T::Array[String],
          ted_approach: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        # A folksy metaphor to remember
      barbecue_sauce_wisdom:,
        # Understanding the root cause
      diagnosis:,
        # Advice from the Diamond Dogs support group
      diamond_dogs_advice:,
        # What resolution could look like
      potential_outcome:,
        # Concrete steps to resolve the conflict
      steps_to_resolution:,
        # How Ted would handle this
      ted_approach:
      ); end

      sig do
        override
          .returns(
            {
              barbecue_sauce_wisdom: String,
              diagnosis: String,
              diamond_dogs_advice: String,
              potential_outcome: String,
              steps_to_resolution: T::Array[String],
              ted_approach: String
            }
          )
      end
      def to_hash; end
    end
  end
end
