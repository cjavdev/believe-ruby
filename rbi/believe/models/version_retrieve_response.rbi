# typed: strong

module Believe
  module Models
    VersionRetrieveResponse =
      T.let(T.anything, ::Believe::Internal::Type::Converter)
  end
end
