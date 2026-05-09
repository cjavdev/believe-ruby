# frozen_string_literal: true

module Believe
  module Models
    # Medical staff specialties.
    module MedicalSpecialty
      extend ::Believe::Internal::Type::Enum

      TEAM_DOCTOR = :team_doctor
      PHYSIOTHERAPIST = :physiotherapist
      SPORTS_PSYCHOLOGIST = :sports_psychologist
      NUTRITIONIST = :nutritionist
      MASSAGE_THERAPIST = :massage_therapist

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
