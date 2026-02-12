# frozen_string_literal: true

module Believe
  module Models
    # Webhook event sent when a match completes.
    module UnwrapWebhookEvent
      extend Believe::Internal::Type::Union

      discriminator :event_type

      # Webhook event sent when a match completes.
      variant :"match.completed", -> { Believe::MatchCompletedWebhookEvent }

      # Webhook event sent when a team member (player, coach, staff) transfers between teams.
      variant :"team_member.transferred", -> { Believe::TeamMemberTransferredWebhookEvent }

      # @!method self.variants
      #   @return [Array(Believe::Models::MatchCompletedWebhookEvent, Believe::Models::TeamMemberTransferredWebhookEvent)]
    end
  end
end
