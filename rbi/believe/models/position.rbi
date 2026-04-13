# typed: strong

module Believe
  module Models
    # Football positions for players.
    module Position
      extend ::Believe::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ::Believe::Position) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      GOALKEEPER = T.let(:goalkeeper, ::Believe::Position::TaggedSymbol)
      DEFENDER = T.let(:defender, ::Believe::Position::TaggedSymbol)
      MIDFIELDER = T.let(:midfielder, ::Believe::Position::TaggedSymbol)
      FORWARD = T.let(:forward, ::Believe::Position::TaggedSymbol)

      sig { override.returns(T::Array[::Believe::Position::TaggedSymbol]) }
      def self.values; end
    end
  end
end
