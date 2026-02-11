# typed: strong

module Believe
  module Models
    # Types of moments when quotes occur.
    module QuoteMoment
      extend Believe::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Believe::QuoteMoment) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      HALFTIME_SPEECH =
        T.let(:halftime_speech, Believe::QuoteMoment::TaggedSymbol)
      PRESS_CONFERENCE =
        T.let(:press_conference, Believe::QuoteMoment::TaggedSymbol)
      LOCKER_ROOM = T.let(:locker_room, Believe::QuoteMoment::TaggedSymbol)
      TRAINING = T.let(:training, Believe::QuoteMoment::TaggedSymbol)
      BISCUITS_WITH_BOSS =
        T.let(:biscuits_with_boss, Believe::QuoteMoment::TaggedSymbol)
      PUB = T.let(:pub, Believe::QuoteMoment::TaggedSymbol)
      ONE_ON_ONE = T.let(:one_on_one, Believe::QuoteMoment::TaggedSymbol)
      CELEBRATION = T.let(:celebration, Believe::QuoteMoment::TaggedSymbol)
      CRISIS = T.let(:crisis, Believe::QuoteMoment::TaggedSymbol)
      CASUAL = T.let(:casual, Believe::QuoteMoment::TaggedSymbol)
      CONFRONTATION = T.let(:confrontation, Believe::QuoteMoment::TaggedSymbol)

      sig { override.returns(T::Array[Believe::QuoteMoment::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
