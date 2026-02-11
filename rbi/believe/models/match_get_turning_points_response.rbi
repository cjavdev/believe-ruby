# typed: strong

module Believe
  module Models
    MatchGetTurningPointsResponse =
      T.let(
        Believe::Internal::Type::ArrayOf[
          Believe::Internal::Type::HashOf[Believe::Internal::Type::Unknown]
        ],
        Believe::Internal::Type::Converter
      )
  end
end
