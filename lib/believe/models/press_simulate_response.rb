# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::Press#simulate
    class PressSimulateResponse < ::Believe::Internal::Type::BaseModel
      # @!attribute actual_wisdom
      #   The actual wisdom beneath the humor
      #
      #   @return [String]
      required :actual_wisdom, String

      # @!attribute follow_up_dodge
      #   How Ted would dodge a follow-up
      #
      #   @return [String]
      required :follow_up_dodge, String

      # @!attribute reporter_reaction
      #   How reporters would react
      #
      #   @return [String]
      required :reporter_reaction, String

      # @!attribute response
      #   Ted's press conference answer
      #
      #   @return [String]
      required :response, String

      # @!attribute deflection_humor
      #   Humorous deflection if appropriate
      #
      #   @return [String, nil]
      optional :deflection_humor, String, nil?: true

      # @!method initialize(actual_wisdom:, follow_up_dodge:, reporter_reaction:, response:, deflection_humor: nil)
      #   Ted's press conference response.
      #
      #   @param actual_wisdom [String] The actual wisdom beneath the humor
      #
      #   @param follow_up_dodge [String] How Ted would dodge a follow-up
      #
      #   @param reporter_reaction [String] How reporters would react
      #
      #   @param response [String] Ted's press conference answer
      #
      #   @param deflection_humor [String, nil] Humorous deflection if appropriate
    end
  end
end
