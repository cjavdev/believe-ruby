# frozen_string_literal: true

module Believe
  module Models
    class TeamValues < Believe::Internal::Type::BaseModel
      # @!attribute primary_value
      #   The team's primary guiding value
      #
      #   @return [String]
      required :primary_value, String

      # @!attribute secondary_values
      #   Supporting values
      #
      #   @return [Array<String>]
      required :secondary_values, Believe::Internal::Type::ArrayOf[String]

      # @!attribute team_motto
      #   Team's motivational motto
      #
      #   @return [String]
      required :team_motto, String

      # @!method initialize(primary_value:, secondary_values:, team_motto:)
      #   Core values that define a team's culture.
      #
      #   @param primary_value [String] The team's primary guiding value
      #
      #   @param secondary_values [Array<String>] Supporting values
      #
      #   @param team_motto [String] Team's motivational motto
    end
  end
end
