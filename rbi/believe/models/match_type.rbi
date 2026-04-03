# typed: strong

module Believe
  module Models
    # Types of matches.
    module MatchType
      extend ::Believe::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ::Believe::MatchType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      LEAGUE = T.let(:league, ::Believe::MatchType::TaggedSymbol)
      CUP = T.let(:cup, ::Believe::MatchType::TaggedSymbol)
      FRIENDLY = T.let(:friendly, ::Believe::MatchType::TaggedSymbol)
      PLAYOFF = T.let(:playoff, ::Believe::MatchType::TaggedSymbol)
      FINAL = T.let(:final, ::Believe::MatchType::TaggedSymbol)

      sig { override.returns(T::Array[::Believe::MatchType::TaggedSymbol]) }
      def self.values; end
    end
  end
end
