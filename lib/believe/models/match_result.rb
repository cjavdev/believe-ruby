# frozen_string_literal: true

module Believe
  module Models
    # Match result types.
    module MatchResult
      extend Believe::Internal::Type::Enum

      WIN = :win
      LOSS = :loss
      DRAW = :draw
      PENDING = :pending

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
