# typed: strong

module Believe
  module Models
    module Matches
      CommentaryStreamResponse =
        T.let(T.anything, ::Believe::Internal::Type::Converter)
    end
  end
end
