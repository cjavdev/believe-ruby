# typed: strong

module Believe
  module Models
    class EmotionalStats < Believe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Believe::EmotionalStats, Believe::Internal::AnyHash)
        end

      # Level of curiosity over judgment (0-100)
      sig { returns(Integer) }
      attr_accessor :curiosity

      # Capacity for empathy (0-100)
      sig { returns(Integer) }
      attr_accessor :empathy

      # Level of optimism (0-100)
      sig { returns(Integer) }
      attr_accessor :optimism

      # Bounce-back ability (0-100)
      sig { returns(Integer) }
      attr_accessor :resilience

      # Willingness to be vulnerable (0-100)
      sig { returns(Integer) }
      attr_accessor :vulnerability

      # Emotional intelligence statistics for a character.
      sig do
        params(
          curiosity: Integer,
          empathy: Integer,
          optimism: Integer,
          resilience: Integer,
          vulnerability: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Level of curiosity over judgment (0-100)
        curiosity:,
        # Capacity for empathy (0-100)
        empathy:,
        # Level of optimism (0-100)
        optimism:,
        # Bounce-back ability (0-100)
        resilience:,
        # Willingness to be vulnerable (0-100)
        vulnerability:
      )
      end

      sig do
        override.returns(
          {
            curiosity: Integer,
            empathy: Integer,
            optimism: Integer,
            resilience: Integer,
            vulnerability: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
