# frozen_string_literal: true

module Believe
  module Models
    # Football positions for players.
    module Position
      extend Believe::Internal::Type::Enum

      GOALKEEPER = :goalkeeper
      DEFENDER = :defender
      MIDFIELDER = :midfielder
      FORWARD = :forward

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
