# typed: strong

module Believe
  module Models
    class GrowthArc < Believe::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Believe::GrowthArc, Believe::Internal::AnyHash) }

      # Key breakthrough moment
      sig { returns(String) }
      attr_accessor :breakthrough

      # Main challenge faced
      sig { returns(String) }
      attr_accessor :challenge

      # Where the character ends up
      sig { returns(String) }
      attr_accessor :ending_point

      # Season number
      sig { returns(Integer) }
      attr_accessor :season

      # Where the character starts emotionally
      sig { returns(String) }
      attr_accessor :starting_point

      # Character development arc.
      sig do
        params(
          breakthrough: String,
          challenge: String,
          ending_point: String,
          season: Integer,
          starting_point: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Key breakthrough moment
        breakthrough:,
        # Main challenge faced
        challenge:,
        # Where the character ends up
        ending_point:,
        # Season number
        season:,
        # Where the character starts emotionally
        starting_point:
      )
      end

      sig do
        override.returns(
          {
            breakthrough: String,
            challenge: String,
            ending_point: String,
            season: Integer,
            starting_point: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
