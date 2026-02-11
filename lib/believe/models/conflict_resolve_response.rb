# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Conflicts#resolve
    class ConflictResolveResponse < Believe::Internal::Type::BaseModel
      # @!attribute barbecue_sauce_wisdom
      #   A folksy metaphor to remember
      #
      #   @return [String]
      required :barbecue_sauce_wisdom, String

      # @!attribute diagnosis
      #   Understanding the root cause
      #
      #   @return [String]
      required :diagnosis, String

      # @!attribute diamond_dogs_advice
      #   Advice from the Diamond Dogs support group
      #
      #   @return [String]
      required :diamond_dogs_advice, String

      # @!attribute potential_outcome
      #   What resolution could look like
      #
      #   @return [String]
      required :potential_outcome, String

      # @!attribute steps_to_resolution
      #   Concrete steps to resolve the conflict
      #
      #   @return [Array<String>]
      required :steps_to_resolution, Believe::Internal::Type::ArrayOf[String]

      # @!attribute ted_approach
      #   How Ted would handle this
      #
      #   @return [String]
      required :ted_approach, String

      # @!method initialize(barbecue_sauce_wisdom:, diagnosis:, diamond_dogs_advice:, potential_outcome:, steps_to_resolution:, ted_approach:)
      #   Conflict resolution response.
      #
      #   @param barbecue_sauce_wisdom [String] A folksy metaphor to remember
      #
      #   @param diagnosis [String] Understanding the root cause
      #
      #   @param diamond_dogs_advice [String] Advice from the Diamond Dogs support group
      #
      #   @param potential_outcome [String] What resolution could look like
      #
      #   @param steps_to_resolution [Array<String>] Concrete steps to resolve the conflict
      #
      #   @param ted_approach [String] How Ted would handle this
    end
  end
end
