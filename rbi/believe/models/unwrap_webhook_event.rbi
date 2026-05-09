# typed: strong

module Believe
  module Models
    # Webhook event sent when a match completes.
    module UnwrapWebhookEvent
      extend ::Believe::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            ::Believe::MatchCompletedWebhookEvent,
            ::Believe::TeamMemberTransferredWebhookEvent
          )
        end

      sig do
        override.returns(T::Array[::Believe::UnwrapWebhookEvent::Variants])
      end
      def self.variants
      end
    end
  end
end
