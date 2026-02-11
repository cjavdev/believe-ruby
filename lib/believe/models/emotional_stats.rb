# frozen_string_literal: true

module Believe
  module Models
    class EmotionalStats < Believe::Internal::Type::BaseModel
      # @!attribute curiosity
      #   Level of curiosity over judgment (0-100)
      #
      #   @return [Integer]
      required :curiosity, Integer

      # @!attribute empathy
      #   Capacity for empathy (0-100)
      #
      #   @return [Integer]
      required :empathy, Integer

      # @!attribute optimism
      #   Level of optimism (0-100)
      #
      #   @return [Integer]
      required :optimism, Integer

      # @!attribute resilience
      #   Bounce-back ability (0-100)
      #
      #   @return [Integer]
      required :resilience, Integer

      # @!attribute vulnerability
      #   Willingness to be vulnerable (0-100)
      #
      #   @return [Integer]
      required :vulnerability, Integer

      # @!method initialize(curiosity:, empathy:, optimism:, resilience:, vulnerability:)
      #   Emotional intelligence statistics for a character.
      #
      #   @param curiosity [Integer] Level of curiosity over judgment (0-100)
      #
      #   @param empathy [Integer] Capacity for empathy (0-100)
      #
      #   @param optimism [Integer] Level of optimism (0-100)
      #
      #   @param resilience [Integer] Bounce-back ability (0-100)
      #
      #   @param vulnerability [Integer] Willingness to be vulnerable (0-100)
    end
  end
end
