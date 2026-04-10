# typed: strong

module Believe
  module Models
    # Match result types.
    module MatchResult
      extend ::Believe::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ::Believe::MatchResult) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      WIN = T.let(:win, ::Believe::MatchResult::TaggedSymbol)
      LOSS = T.let(:loss, ::Believe::MatchResult::TaggedSymbol)
      DRAW = T.let(:draw, ::Believe::MatchResult::TaggedSymbol)
      PENDING = T.let(:pending, ::Believe::MatchResult::TaggedSymbol)

      sig { override.returns(T::Array[::Believe::MatchResult::TaggedSymbol]) }
      def self.values; end
    end
  end
end
