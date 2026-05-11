# frozen_string_literal: true

module Believe
  module Models
    # Webhook event sent when a match completes.
    module UnwrapWebhookEvent
      extend ::Believe::Internal::Type::Union

      # Webhook event sent when a match completes.
      variant -> { ::Believe::MatchCompletedWebhookEvent }

      # Webhook event sent when a team member (player, coach, staff) transfers between teams.
      variant -> { ::Believe::TeamMemberTransferredWebhookEvent }

      # @!method self.variants
      #   @return [Array(::Believe::Models::MatchCompletedWebhookEvent, ::Believe::Models::TeamMemberTransferredWebhookEvent)]
    end
  end
end
