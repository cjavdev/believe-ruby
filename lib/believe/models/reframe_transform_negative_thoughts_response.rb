# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Reframe#transform_negative_thoughts
    class ReframeTransformNegativeThoughtsResponse < Believe::Internal::Type::BaseModel
      # @!attribute daily_affirmation
      #   A daily affirmation to practice
      #
      #   @return [String]
      required :daily_affirmation, String

      # @!attribute original_thought
      #   The original negative thought
      #
      #   @return [String]
      required :original_thought, String

      # @!attribute reframed_thought
      #   The thought reframed positively
      #
      #   @return [String]
      required :reframed_thought, String

      # @!attribute ted_perspective
      #   Ted's take on this thought
      #
      #   @return [String]
      required :ted_perspective, String

      # @!attribute dr_sharon_insight
      #   Dr. Sharon's therapeutic insight
      #
      #   @return [String, nil]
      optional :dr_sharon_insight, String, nil?: true

      # @!method initialize(daily_affirmation:, original_thought:, reframed_thought:, ted_perspective:, dr_sharon_insight: nil)
      #   Reframed perspective response.
      #
      #   @param daily_affirmation [String] A daily affirmation to practice
      #
      #   @param original_thought [String] The original negative thought
      #
      #   @param reframed_thought [String] The thought reframed positively
      #
      #   @param ted_perspective [String] Ted's take on this thought
      #
      #   @param dr_sharon_insight [String, nil] Dr. Sharon's therapeutic insight
    end
  end
end
