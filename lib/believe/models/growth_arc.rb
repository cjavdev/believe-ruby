# frozen_string_literal: true

module Believe
  module Models
    class GrowthArc < ::Believe::Internal::Type::BaseModel
      # @!attribute breakthrough
      #   Key breakthrough moment
      #
      #   @return [String]
      required :breakthrough, String

      # @!attribute challenge
      #   Main challenge faced
      #
      #   @return [String]
      required :challenge, String

      # @!attribute ending_point
      #   Where the character ends up
      #
      #   @return [String]
      required :ending_point, String

      # @!attribute season
      #   Season number
      #
      #   @return [Integer]
      required :season, Integer

      # @!attribute starting_point
      #   Where the character starts emotionally
      #
      #   @return [String]
      required :starting_point, String

      # @!method initialize(breakthrough:, challenge:, ending_point:, season:, starting_point:)
      #   Character development arc.
      #
      #   @param breakthrough [String] Key breakthrough moment
      #
      #   @param challenge [String] Main challenge faced
      #
      #   @param ending_point [String] Where the character ends up
      #
      #   @param season [Integer] Season number
      #
      #   @param starting_point [String] Where the character starts emotionally
    end
  end
end
