# typed: strong

module Believe
  module Models
    # Roles characters can have.
    module CharacterRole
      extend Believe::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Believe::CharacterRole) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      COACH = T.let(:coach, Believe::CharacterRole::TaggedSymbol)
      PLAYER = T.let(:player, Believe::CharacterRole::TaggedSymbol)
      OWNER = T.let(:owner, Believe::CharacterRole::TaggedSymbol)
      MANAGER = T.let(:manager, Believe::CharacterRole::TaggedSymbol)
      STAFF = T.let(:staff, Believe::CharacterRole::TaggedSymbol)
      JOURNALIST = T.let(:journalist, Believe::CharacterRole::TaggedSymbol)
      FAMILY = T.let(:family, Believe::CharacterRole::TaggedSymbol)
      FRIEND = T.let(:friend, Believe::CharacterRole::TaggedSymbol)
      FAN = T.let(:fan, Believe::CharacterRole::TaggedSymbol)
      OTHER = T.let(:other, Believe::CharacterRole::TaggedSymbol)

      sig { override.returns(T::Array[Believe::CharacterRole::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
