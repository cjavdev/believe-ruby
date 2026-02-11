# frozen_string_literal: true

module Believe
  module Resources
    class Webhooks
      # Register a new webhook endpoint to receive event notifications.
      #
      # ## Event Types
      #
      # Available event types to subscribe to:
      #
      # - `match.completed` - Fired when a football match ends
      # - `team_member.transferred` - Fired when a player/coach joins or leaves a team
      #
      # If no event types are specified, the webhook will receive all event types.
      #
      # ## Webhook Signatures
      #
      # All webhook deliveries include Standard Webhooks signature headers:
      #
      # - `webhook-id` - Unique message identifier
      # - `webhook-timestamp` - Unix timestamp of when the webhook was sent
      # - `webhook-signature` - HMAC-SHA256 signature in format `v1,{base64_signature}`
      #
      # Store the returned `secret` securely - you'll need it to verify webhook
      # signatures.
      #
      # @overload create(url:, description: nil, event_types: nil, request_options: {})
      #
      # @param url [String] The URL to send webhook events to
      #
      # @param description [String, nil] Optional description for this webhook
      #
      # @param event_types [Array<Symbol, Believe::Models::WebhookCreateParams::EventType>, nil] List of event types to subscribe to. If not provided, subscribes to all events.
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::WebhookCreateResponse]
      #
      # @see Believe::Models::WebhookCreateParams
      def create(params)
        parsed, options = Believe::WebhookCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhooks",
          body: parsed,
          model: Believe::Models::WebhookCreateResponse,
          options: options
        )
      end

      # Get details of a specific webhook endpoint.
      #
      # @overload retrieve(webhook_id, request_options: {})
      #
      # @param webhook_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::RegisteredWebhook]
      #
      # @see Believe::Models::WebhookRetrieveParams
      def retrieve(webhook_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks/%1$s", webhook_id],
          model: Believe::RegisteredWebhook,
          options: params[:request_options]
        )
      end

      # Get a list of all registered webhook endpoints.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Believe::Models::RegisteredWebhook>]
      #
      # @see Believe::Models::WebhookListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "webhooks",
          model: Believe::Internal::Type::ArrayOf[Believe::RegisteredWebhook],
          options: params[:request_options]
        )
      end

      # Unregister a webhook endpoint. It will no longer receive events.
      #
      # @overload delete(webhook_id, request_options: {})
      #
      # @param webhook_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Object}]
      #
      # @see Believe::Models::WebhookDeleteParams
      def delete(webhook_id, params = {})
        @client.request(
          method: :delete,
          path: ["webhooks/%1$s", webhook_id],
          model: Believe::Internal::Type::HashOf[Believe::Internal::Type::Unknown],
          options: params[:request_options]
        )
      end

      # Trigger a webhook event and deliver it to all subscribed endpoints.
      #
      # This endpoint is useful for testing your webhook integration. It will:
      #
      # 1. Generate an event with the specified type and payload
      # 2. Find all webhooks subscribed to that event type
      # 3. Send a POST request to each webhook URL with signature headers
      # 4. Return the delivery results
      #
      # ## Event Payload
      #
      # You can provide a custom payload, or leave it empty to use a sample payload.
      #
      # ## Webhook Signature Headers
      #
      # Each webhook delivery includes:
      #
      # - `webhook-id` - Unique event identifier (e.g., `evt_abc123...`)
      # - `webhook-timestamp` - Unix timestamp
      # - `webhook-signature` - HMAC-SHA256 signature (`v1,{base64}`)
      #
      # To verify signatures, compute:
      #
      # ```
      # signature = HMAC-SHA256(
      #     key = base64_decode(secret_without_prefix),
      #     message = "{timestamp}.{raw_json_payload}"
      # )
      # ```
      #
      # @overload trigger_event(event_type:, payload: nil, request_options: {})
      #
      # @param event_type [Symbol, Believe::Models::WebhookTriggerEventParams::EventType] The type of event to trigger
      #
      # @param payload [Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted, Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred, nil] Optional event payload. If not provided, a sample payload will be generated.
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::WebhookTriggerEventResponse]
      #
      # @see Believe::Models::WebhookTriggerEventParams
      def trigger_event(params)
        parsed, options = Believe::WebhookTriggerEventParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhooks/trigger",
          body: parsed,
          model: Believe::Models::WebhookTriggerEventResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Believe::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
