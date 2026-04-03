# typed: strong

module Believe
  module Models
    TeamListLogosResponse =
      T.let(
        ::Believe::Internal::Type::ArrayOf[::Believe::Teams::FileUpload],
        ::Believe::Internal::Type::Converter
      )
  end
end
