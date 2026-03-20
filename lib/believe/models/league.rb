# frozen_string_literal: true

module Believe
  module Models
    # Football leagues.
    module League
      extend ::Believe::Internal::Type::Enum

      PREMIER_LEAGUE = :"Premier League"
      CHAMPIONSHIP = :Championship
      LEAGUE_ONE = :"League One"
      LEAGUE_TWO = :"League Two"
      LA_LIGA = :"La Liga"
      SERIE_A = :"Serie A"
      BUNDESLIGA = :Bundesliga
      LIGUE_1 = :"Ligue 1"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
