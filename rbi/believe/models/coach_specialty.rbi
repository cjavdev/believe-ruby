# typed: strong

module Believe
  module Models
    # Coaching specialties.
    module CoachSpecialty
      extend ::Believe::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ::Believe::CoachSpecialty) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      HEAD_COACH = T.let(:head_coach, ::Believe::CoachSpecialty::TaggedSymbol)
      ASSISTANT_COACH = T.let(:assistant_coach, ::Believe::CoachSpecialty::TaggedSymbol)
      GOALKEEPING_COACH = T.let(:goalkeeping_coach, ::Believe::CoachSpecialty::TaggedSymbol)
      FITNESS_COACH = T.let(:fitness_coach, ::Believe::CoachSpecialty::TaggedSymbol)
      TACTICAL_ANALYST = T.let(:tactical_analyst, ::Believe::CoachSpecialty::TaggedSymbol)

      sig { override.returns(T::Array[::Believe::CoachSpecialty::TaggedSymbol]) }
      def self.values; end
    end
  end
end
