# typed: strong

module Believe
  module Models
    CharacterGetQuotesResponse =
      T.let(::Believe::Internal::Type::ArrayOf[String], ::Believe::Internal::Type::Converter)
  end
end
