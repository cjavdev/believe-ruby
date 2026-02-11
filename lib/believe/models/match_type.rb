# frozen_string_literal: true

module Believe
  module Models
    # Types of matches.
    module MatchType
      extend Believe::Internal::Type::Enum

      LEAGUE = :league
      CUP = :cup
      FRIENDLY = :friendly
      PLAYOFF = :playoff
      FINAL = :final

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
