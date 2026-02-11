# typed: strong

module Believe
  module Models
    WebhookListResponse =
      T.let(
        Believe::Internal::Type::ArrayOf[Believe::RegisteredWebhook],
        Believe::Internal::Type::Converter
      )
  end
end
