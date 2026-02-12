# typed: strong

module Believe
  module Models
    # Webhook event sent when a match completes.
    module UnwrapWebhookEvent
      extend Believe::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Believe::MatchCompletedWebhookEvent,
            Believe::TeamMemberTransferredWebhookEvent
          )
        end

      sig { override.returns(T::Array[Believe::UnwrapWebhookEvent::Variants]) }
      def self.variants
      end
    end
  end
end
