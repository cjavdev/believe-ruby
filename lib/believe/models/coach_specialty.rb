# frozen_string_literal: true

module Believe
  module Models
    # Coaching specialties.
    module CoachSpecialty
      extend ::Believe::Internal::Type::Enum

      HEAD_COACH = :head_coach
      ASSISTANT_COACH = :assistant_coach
      GOALKEEPING_COACH = :goalkeeping_coach
      FITNESS_COACH = :fitness_coach
      TACTICAL_ANALYST = :tactical_analyst

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
