# typed: strong

module Believe
  module Models
    class TeamValues < Believe::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Believe::TeamValues, Believe::Internal::AnyHash) }

      # The team's primary guiding value
      sig { returns(String) }
      attr_accessor :primary_value

      # Supporting values
      sig { returns(T::Array[String]) }
      attr_accessor :secondary_values

      # Team's motivational motto
      sig { returns(String) }
      attr_accessor :team_motto

      # Core values that define a team's culture.
      sig do
        params(
          primary_value: String,
          secondary_values: T::Array[String],
          team_motto: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The team's primary guiding value
        primary_value:,
        # Supporting values
        secondary_values:,
        # Team's motivational motto
        team_motto:
      )
      end

      sig do
        override.returns(
          {
            primary_value: String,
            secondary_values: T::Array[String],
            team_motto: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
