# typed: strong

module Believe
  module Models
    TeamGetRivalsResponse =
      T.let(
        ::Believe::Internal::Type::ArrayOf[::Believe::Team],
        ::Believe::Internal::Type::Converter
      )
  end
end
