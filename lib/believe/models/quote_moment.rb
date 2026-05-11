# frozen_string_literal: true

module Believe
  module Models
    # Types of moments when quotes occur.
    module QuoteMoment
      extend ::Believe::Internal::Type::Enum

      HALFTIME_SPEECH = :halftime_speech
      PRESS_CONFERENCE = :press_conference
      LOCKER_ROOM = :locker_room
      TRAINING = :training
      BISCUITS_WITH_BOSS = :biscuits_with_boss
      PUB = :pub
      ONE_ON_ONE = :one_on_one
      CELEBRATION = :celebration
      CRISIS = :crisis
      CASUAL = :casual
      CONFRONTATION = :confrontation

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
