# frozen_string_literal: true

module Believe
  module Models
    # @type [Believe::Internal::Type::Converter]
    TeamGetRivalsResponse = Believe::Internal::Type::ArrayOf[-> { Believe::Team }]
  end
end
