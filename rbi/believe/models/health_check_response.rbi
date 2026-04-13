# typed: strong

module Believe
  module Models
    HealthCheckResponse = T.let(T.anything, ::Believe::Internal::Type::Converter)
  end
end
