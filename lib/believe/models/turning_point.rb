# frozen_string_literal: true

module Believe
  module Models
    class TurningPoint < ::Believe::Internal::Type::BaseModel
      # @!attribute description
      #   What happened
      #
      #   @return [String]
      required :description, String

      # @!attribute emotional_impact
      #   How this affected the team emotionally
      #
      #   @return [String]
      required :emotional_impact, String

      # @!attribute minute
      #   Minute of the match
      #
      #   @return [Integer]
      required :minute, Integer

      # @!attribute character_involved
      #   Character ID who was central to this moment
      #
      #   @return [String, nil]
      optional :character_involved, String, nil?: true

      # @!method initialize(description:, emotional_impact:, minute:, character_involved: nil)
      #   A pivotal moment in a match.
      #
      #   @param description [String] What happened
      #
      #   @param emotional_impact [String] How this affected the team emotionally
      #
      #   @param minute [Integer] Minute of the match
      #
      #   @param character_involved [String, nil] Character ID who was central to this moment
    end
  end
end
