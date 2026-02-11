# typed: strong

module Believe
  module Models
    # Medical staff specialties.
    module MedicalSpecialty
      extend Believe::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Believe::MedicalSpecialty) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TEAM_DOCTOR = T.let(:team_doctor, Believe::MedicalSpecialty::TaggedSymbol)
      PHYSIOTHERAPIST =
        T.let(:physiotherapist, Believe::MedicalSpecialty::TaggedSymbol)
      SPORTS_PSYCHOLOGIST =
        T.let(:sports_psychologist, Believe::MedicalSpecialty::TaggedSymbol)
      NUTRITIONIST =
        T.let(:nutritionist, Believe::MedicalSpecialty::TaggedSymbol)
      MASSAGE_THERAPIST =
        T.let(:massage_therapist, Believe::MedicalSpecialty::TaggedSymbol)

      sig do
        override.returns(T::Array[Believe::MedicalSpecialty::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
