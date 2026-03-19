# typed: strong

module Believe
  module Models
    class WebhookTriggerEventResponse < Believe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Believe::Models::WebhookTriggerEventResponse,
            Believe::Internal::AnyHash
          )
        end

      # Results of webhook deliveries
      sig do
        returns(
          T::Array[Believe::Models::WebhookTriggerEventResponse::Delivery]
        )
      end
      attr_accessor :deliveries

      # Unique event identifier
      sig { returns(String) }
      attr_accessor :event_id

      # The type of event triggered
      sig do
        returns(
          Believe::Models::WebhookTriggerEventResponse::EventType::TaggedSymbol
        )
      end
      attr_accessor :event_type

      # Number of successful deliveries
      sig { returns(Integer) }
      attr_accessor :successful_deliveries

      # Ted's reaction
      sig { returns(String) }
      attr_accessor :ted_says

      # Total number of webhooks that received this event
      sig { returns(Integer) }
      attr_accessor :total_webhooks

      # Response after triggering webhook events.
      sig do
        params(
          deliveries:
            T::Array[
              Believe::Models::WebhookTriggerEventResponse::Delivery::OrHash
            ],
          event_id: String,
          event_type:
            Believe::Models::WebhookTriggerEventResponse::EventType::OrSymbol,
          successful_deliveries: Integer,
          ted_says: String,
          total_webhooks: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Results of webhook deliveries
        deliveries:,
        # Unique event identifier
        event_id:,
        # The type of event triggered
        event_type:,
        # Number of successful deliveries
        successful_deliveries:,
        # Ted's reaction
        ted_says:,
        # Total number of webhooks that received this event
        total_webhooks:
      )
      end

      sig do
        override.returns(
          {
            deliveries:
              T::Array[Believe::Models::WebhookTriggerEventResponse::Delivery],
            event_id: String,
            event_type:
              Believe::Models::WebhookTriggerEventResponse::EventType::TaggedSymbol,
            successful_deliveries: Integer,
            ted_says: String,
            total_webhooks: Integer
          }
        )
      end
      def to_hash
      end

      class Delivery < Believe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Believe::Models::WebhookTriggerEventResponse::Delivery,
              Believe::Internal::AnyHash
            )
          end

        # Whether delivery was successful
        sig { returns(T::Boolean) }
        attr_accessor :success

        # URL the webhook was sent to
        sig { returns(String) }
        attr_accessor :url

        # ID of the webhook
        sig { returns(String) }
        attr_accessor :webhook_id

        # Error message if delivery failed
        sig { returns(T.nilable(String)) }
        attr_accessor :error

        # HTTP status code from the endpoint
        sig { returns(T.nilable(Integer)) }
        attr_accessor :status_code

        # Result of delivering a webhook to a single endpoint.
        sig do
          params(
            success: T::Boolean,
            url: String,
            webhook_id: String,
            error: T.nilable(String),
            status_code: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether delivery was successful
          success:,
          # URL the webhook was sent to
          url:,
          # ID of the webhook
          webhook_id:,
          # Error message if delivery failed
          error: nil,
          # HTTP status code from the endpoint
          status_code: nil
        )
        end

        sig do
          override.returns(
            {
              success: T::Boolean,
              url: String,
              webhook_id: String,
              error: T.nilable(String),
              status_code: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
      end

      # The type of event triggered
      module EventType
        extend Believe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Believe::Models::WebhookTriggerEventResponse::EventType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MATCH_COMPLETED =
          T.let(
            :"match.completed",
            Believe::Models::WebhookTriggerEventResponse::EventType::TaggedSymbol
          )
        TEAM_MEMBER_TRANSFERRED =
          T.let(
            :"team_member.transferred",
            Believe::Models::WebhookTriggerEventResponse::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Believe::Models::WebhookTriggerEventResponse::EventType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
