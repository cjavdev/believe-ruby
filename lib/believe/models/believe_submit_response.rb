# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Believe#submit
    class BelieveSubmitResponse < Believe::Internal::Type::BaseModel
      # @!attribute action_suggestion
      #   Suggested action to take
      #
      #   @return [String]
      required :action_suggestion, String

      # @!attribute believe_score
      #   Your current believe-o-meter score
      #
      #   @return [Integer]
      required :believe_score, Integer

      # @!attribute goldfish_wisdom
      #   A reminder to have a goldfish memory when needed
      #
      #   @return [String]
      required :goldfish_wisdom, String

      # @!attribute relevant_quote
      #   A relevant Ted Lasso quote
      #
      #   @return [String]
      required :relevant_quote, String

      # @!attribute ted_response
      #   Ted's motivational response
      #
      #   @return [String]
      required :ted_response, String

      # @!method initialize(action_suggestion:, believe_score:, goldfish_wisdom:, relevant_quote:, ted_response:)
      #   Response from the Believe Engine.
      #
      #   @param action_suggestion [String] Suggested action to take
      #
      #   @param believe_score [Integer] Your current believe-o-meter score
      #
      #   @param goldfish_wisdom [String] A reminder to have a goldfish memory when needed
      #
      #   @param relevant_quote [String] A relevant Ted Lasso quote
      #
      #   @param ted_response [String] Ted's motivational response
    end
  end
end
