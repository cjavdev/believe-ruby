# typed: strong

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
      sig do
        params(
          url: String,
          description: T.nilable(String),
          event_types:
            T.nilable(
              T::Array[Believe::WebhookCreateParams::EventType::OrSymbol]
            ),
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Models::WebhookCreateResponse)
      end
      def create(
        # The URL to send webhook events to
        url:,
        # Optional description for this webhook
        description: nil,
        # List of event types to subscribe to. If not provided, subscribes to all events.
        event_types: nil,
        request_options: {}
      )
      end

      # Get details of a specific webhook endpoint.
      sig do
        params(
          webhook_id: String,
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::RegisteredWebhook)
      end
      def retrieve(webhook_id, request_options: {})
      end

      # Get a list of all registered webhook endpoints.
      sig do
        params(request_options: Believe::RequestOptions::OrHash).returns(
          T::Array[Believe::RegisteredWebhook]
        )
      end
      def list(request_options: {})
      end

      # Unregister a webhook endpoint. It will no longer receive events.
      sig do
        params(
          webhook_id: String,
          request_options: Believe::RequestOptions::OrHash
        ).returns(T::Hash[Symbol, T.anything])
      end
      def delete(webhook_id, request_options: {})
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
      sig do
        params(
          event_type: Believe::WebhookTriggerEventParams::EventType::OrSymbol,
          payload:
            T.nilable(
              T.any(
                Believe::WebhookTriggerEventParams::Payload::MatchCompleted::OrHash,
                Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::OrHash
              )
            ),
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Models::WebhookTriggerEventResponse)
      end
      def trigger_event(
        # The type of event to trigger
        event_type:,
        # Optional event payload. If not provided, a sample payload will be generated.
        payload: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
