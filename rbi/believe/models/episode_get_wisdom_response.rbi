# typed: strong

module Believe
  module Models
    EpisodeGetWisdomResponse =
      T.let(
        Believe::Internal::Type::HashOf[Believe::Internal::Type::Unknown],
        Believe::Internal::Type::Converter
      )
  end
end
