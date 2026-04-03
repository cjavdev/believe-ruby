# typed: strong

module Believe
  module Models
    class TurningPoint < ::Believe::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(::Believe::TurningPoint, ::Believe::Internal::AnyHash) }

      # What happened
      sig { returns(String) }
      attr_accessor :description

      # How this affected the team emotionally
      sig { returns(String) }
      attr_accessor :emotional_impact

      # Minute of the match
      sig { returns(Integer) }
      attr_accessor :minute

      # Character ID who was central to this moment
      sig { returns(T.nilable(String)) }
      attr_accessor :character_involved

      # A pivotal moment in a match.
      sig do
        params(
          description: String,
          emotional_impact: String,
          minute: Integer,
          character_involved: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # What happened
      description:,
        # How this affected the team emotionally
      emotional_impact:,
        # Minute of the match
      minute:,
        # Character ID who was central to this moment
      character_involved: nil
      ); end

      sig do
        override
          .returns(
            {description: String, emotional_impact: String, minute: Integer, character_involved: T.nilable(String)}
          )
      end
      def to_hash; end
    end
  end
end
