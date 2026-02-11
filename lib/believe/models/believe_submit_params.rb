# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Believe#submit
    class BelieveSubmitParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute situation
      #   Describe your situation
      #
      #   @return [String]
      required :situation, String

      # @!attribute situation_type
      #   Type of situation
      #
      #   @return [Symbol, Believe::Models::BelieveSubmitParams::SituationType]
      required :situation_type, enum: -> { Believe::BelieveSubmitParams::SituationType }

      # @!attribute context
      #   Additional context
      #
      #   @return [String, nil]
      optional :context, String, nil?: true

      # @!attribute intensity
      #   How intense is the response needed (1=gentle, 10=full Ted)
      #
      #   @return [Integer, nil]
      optional :intensity, Integer

      # @!method initialize(situation:, situation_type:, context: nil, intensity: nil, request_options: {})
      #   @param situation [String] Describe your situation
      #
      #   @param situation_type [Symbol, Believe::Models::BelieveSubmitParams::SituationType] Type of situation
      #
      #   @param context [String, nil] Additional context
      #
      #   @param intensity [Integer] How intense is the response needed (1=gentle, 10=full Ted)
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]

      # Type of situation
      module SituationType
        extend Believe::Internal::Type::Enum

        WORK_CHALLENGE = :work_challenge
        PERSONAL_SETBACK = :personal_setback
        TEAM_CONFLICT = :team_conflict
        SELF_DOUBT = :self_doubt
        BIG_DECISION = :big_decision
        FAILURE = :failure
        NEW_BEGINNING = :new_beginning
        RELATIONSHIP = :relationship

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
