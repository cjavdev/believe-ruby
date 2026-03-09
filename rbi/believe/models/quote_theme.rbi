# typed: strong

module Believe
  module Models
    # Themes that quotes can be categorized under.
    module QuoteTheme
      extend Believe::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Believe::QuoteTheme) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BELIEF = T.let(:belief, Believe::QuoteTheme::TaggedSymbol)
      TEAMWORK = T.let(:teamwork, Believe::QuoteTheme::TaggedSymbol)
      CURIOSITY = T.let(:curiosity, Believe::QuoteTheme::TaggedSymbol)
      KINDNESS = T.let(:kindness, Believe::QuoteTheme::TaggedSymbol)
      RESILIENCE = T.let(:resilience, Believe::QuoteTheme::TaggedSymbol)
      VULNERABILITY = T.let(:vulnerability, Believe::QuoteTheme::TaggedSymbol)
      GROWTH = T.let(:growth, Believe::QuoteTheme::TaggedSymbol)
      HUMOR = T.let(:humor, Believe::QuoteTheme::TaggedSymbol)
      WISDOM = T.let(:wisdom, Believe::QuoteTheme::TaggedSymbol)
      LEADERSHIP = T.let(:leadership, Believe::QuoteTheme::TaggedSymbol)
      LOVE = T.let(:love, Believe::QuoteTheme::TaggedSymbol)
      FORGIVENESS = T.let(:forgiveness, Believe::QuoteTheme::TaggedSymbol)
      PHILOSOPHY = T.let(:philosophy, Believe::QuoteTheme::TaggedSymbol)
      ROMANCE = T.let(:romance, Believe::QuoteTheme::TaggedSymbol)
      CULTURAL_PRIDE =
        T.let(:"cultural-pride", Believe::QuoteTheme::TaggedSymbol)
      CULTURAL_DIFFERENCES =
        T.let(:"cultural-differences", Believe::QuoteTheme::TaggedSymbol)
      ANTAGONISM = T.let(:antagonism, Believe::QuoteTheme::TaggedSymbol)
      CELEBRATION = T.let(:celebration, Believe::QuoteTheme::TaggedSymbol)
      IDENTITY = T.let(:identity, Believe::QuoteTheme::TaggedSymbol)
      ISOLATION = T.let(:isolation, Believe::QuoteTheme::TaggedSymbol)
      POWER = T.let(:power, Believe::QuoteTheme::TaggedSymbol)
      SACRIFICE = T.let(:sacrifice, Believe::QuoteTheme::TaggedSymbol)
      STANDARDS = T.let(:standards, Believe::QuoteTheme::TaggedSymbol)
      CONFIDENCE = T.let(:confidence, Believe::QuoteTheme::TaggedSymbol)
      CONFLICT = T.let(:conflict, Believe::QuoteTheme::TaggedSymbol)
      HONESTY = T.let(:honesty, Believe::QuoteTheme::TaggedSymbol)
      INTEGRITY = T.let(:integrity, Believe::QuoteTheme::TaggedSymbol)
      INTIMIDATION = T.let(:intimidation, Believe::QuoteTheme::TaggedSymbol)
      AMBITION = T.let(:ambition, Believe::QuoteTheme::TaggedSymbol)
      NARCISSISM = T.let(:narcissism, Believe::QuoteTheme::TaggedSymbol)
      MATURITY = T.let(:maturity, Believe::QuoteTheme::TaggedSymbol)

      sig { override.returns(T::Array[Believe::QuoteTheme::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
