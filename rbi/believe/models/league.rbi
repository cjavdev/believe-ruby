# typed: strong

module Believe
  module Models
    # Football leagues.
    module League
      extend ::Believe::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ::Believe::League) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PREMIER_LEAGUE = T.let(:"Premier League", ::Believe::League::TaggedSymbol)
      CHAMPIONSHIP = T.let(:Championship, ::Believe::League::TaggedSymbol)
      LEAGUE_ONE = T.let(:"League One", ::Believe::League::TaggedSymbol)
      LEAGUE_TWO = T.let(:"League Two", ::Believe::League::TaggedSymbol)
      LA_LIGA = T.let(:"La Liga", ::Believe::League::TaggedSymbol)
      SERIE_A = T.let(:"Serie A", ::Believe::League::TaggedSymbol)
      BUNDESLIGA = T.let(:Bundesliga, ::Believe::League::TaggedSymbol)
      LIGUE_1 = T.let(:"Ligue 1", ::Believe::League::TaggedSymbol)

      sig { override.returns(T::Array[::Believe::League::TaggedSymbol]) }
      def self.values; end
    end
  end
end
