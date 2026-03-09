# frozen_string_literal: true

module Believe
  module Models
    # Themes that quotes can be categorized under.
    module QuoteTheme
      extend Believe::Internal::Type::Enum

      BELIEF = :belief
      TEAMWORK = :teamwork
      CURIOSITY = :curiosity
      KINDNESS = :kindness
      RESILIENCE = :resilience
      VULNERABILITY = :vulnerability
      GROWTH = :growth
      HUMOR = :humor
      WISDOM = :wisdom
      LEADERSHIP = :leadership
      LOVE = :love
      FORGIVENESS = :forgiveness
      PHILOSOPHY = :philosophy
      ROMANCE = :romance
      CULTURAL_PRIDE = :"cultural-pride"
      CULTURAL_DIFFERENCES = :"cultural-differences"
      ANTAGONISM = :antagonism
      CELEBRATION = :celebration
      IDENTITY = :identity
      ISOLATION = :isolation
      POWER = :power
      SACRIFICE = :sacrifice
      STANDARDS = :standards
      CONFIDENCE = :confidence
      CONFLICT = :conflict
      HONESTY = :honesty
      INTEGRITY = :integrity
      INTIMIDATION = :intimidation
      AMBITION = :ambition
      NARCISSISM = :narcissism
      MATURITY = :maturity

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
