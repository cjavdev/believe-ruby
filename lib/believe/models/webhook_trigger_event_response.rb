# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::Webhooks#trigger_event
    class WebhookTriggerEventResponse < ::Believe::Internal::Type::BaseModel
      # @!attribute deliveries
      #   Results of webhook deliveries
      #
      #   @return [Array<::Believe::Models::WebhookTriggerEventResponse::Delivery>]
      required :deliveries,
               -> { ::Believe::Internal::Type::ArrayOf[::Believe::Models::WebhookTriggerEventResponse::Delivery] }

      # @!attribute event_id
      #   Unique event identifier
      #
      #   @return [String]
      required :event_id, String

      # @!attribute event_type
      #   The type of event triggered
      #
      #   @return [Symbol, ::Believe::Models::WebhookTriggerEventResponse::EventType]
      required :event_type, enum: -> { ::Believe::Models::WebhookTriggerEventResponse::EventType }

      # @!attribute successful_deliveries
      #   Number of successful deliveries
      #
      #   @return [Integer]
      required :successful_deliveries, Integer

      # @!attribute ted_says
      #   Ted's reaction
      #
      #   @return [String]
      required :ted_says, String

      # @!attribute total_webhooks
      #   Total number of webhooks that received this event
      #
      #   @return [Integer]
      required :total_webhooks, Integer

      # @!method initialize(deliveries:, event_id:, event_type:, successful_deliveries:, ted_says:, total_webhooks:)
      #   Response after triggering webhook events.
      #
      #   @param deliveries [Array<::Believe::Models::WebhookTriggerEventResponse::Delivery>] Results of webhook deliveries
      #
      #   @param event_id [String] Unique event identifier
      #
      #   @param event_type [Symbol, ::Believe::Models::WebhookTriggerEventResponse::EventType] The type of event triggered
      #
      #   @param successful_deliveries [Integer] Number of successful deliveries
      #
      #   @param ted_says [String] Ted's reaction
      #
      #   @param total_webhooks [Integer] Total number of webhooks that received this event

      class Delivery < ::Believe::Internal::Type::BaseModel
        # @!attribute success
        #   Whether delivery was successful
        #
        #   @return [Boolean]
        required :success, ::Believe::Internal::Type::Boolean

        # @!attribute url
        #   URL the webhook was sent to
        #
        #   @return [String]
        required :url, String

        # @!attribute webhook_id
        #   ID of the webhook
        #
        #   @return [String]
        required :webhook_id, String

        # @!attribute error
        #   Error message if delivery failed
        #
        #   @return [String, nil]
        optional :error, String, nil?: true

        # @!attribute status_code
        #   HTTP status code from the endpoint
        #
        #   @return [Integer, nil]
        optional :status_code, Integer, nil?: true

        # @!method initialize(success:, url:, webhook_id:, error: nil, status_code: nil)
        #   Result of delivering a webhook to a single endpoint.
        #
        #   @param success [Boolean] Whether delivery was successful
        #
        #   @param url [String] URL the webhook was sent to
        #
        #   @param webhook_id [String] ID of the webhook
        #
        #   @param error [String, nil] Error message if delivery failed
        #
        #   @param status_code [Integer, nil] HTTP status code from the endpoint
      end

      # The type of event triggered
      #
      # @see ::Believe::Models::WebhookTriggerEventResponse#event_type
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
