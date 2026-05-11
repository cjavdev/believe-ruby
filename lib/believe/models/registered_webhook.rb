# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::Webhooks#retrieve
    class RegisteredWebhook < ::Believe::Internal::Type::BaseModel
      # @!attribute id
      #   Unique webhook identifier
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   When the webhook was registered
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute event_types
      #   List of event types this webhook is subscribed to
      #
      #   @return [Array<Symbol, ::Believe::Models::RegisteredWebhook::EventType>]
      required :event_types,
               -> { ::Believe::Internal::Type::ArrayOf[enum: ::Believe::RegisteredWebhook::EventType] }

      # @!attribute secret
      #   The secret key for verifying webhook signatures (base64 encoded)
      #
      #   @return [String]
      required :secret, String

      # @!attribute url
      #   The URL to send webhook events to
      #
      #   @return [String]
      required :url, String

      # @!attribute description
      #   Optional description for this webhook
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(id:, created_at:, event_types:, secret:, url:, description: nil)
      #   A registered webhook endpoint.
      #
      #   @param id [String] Unique webhook identifier
      #
      #   @param created_at [Time] When the webhook was registered
      #
      #   @param event_types [Array<Symbol, ::Believe::Models::RegisteredWebhook::EventType>] List of event types this webhook is subscribed to
      #
      #   @param secret [String] The secret key for verifying webhook signatures (base64 encoded)
      #
      #   @param url [String] The URL to send webhook events to
      #
      #   @param description [String, nil] Optional description for this webhook

      module EventType
        extend ::Believe::Internal::Type::Enum

        MATCH_COMPLETED = :"match.completed"
        TEAM_MEMBER_TRANSFERRED = :"team_member.transferred"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
