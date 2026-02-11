# typed: strong

module Believe
  module Models
    class WebhookCreateParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Believe::WebhookCreateParams, Believe::Internal::AnyHash)
        end

      # The URL to send webhook events to
      sig { returns(String) }
      attr_accessor :url

      # Optional description for this webhook
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # List of event types to subscribe to. If not provided, subscribes to all events.
      sig do
        returns(
          T.nilable(T::Array[Believe::WebhookCreateParams::EventType::OrSymbol])
        )
      end
      attr_accessor :event_types

      sig do
        params(
          url: String,
          description: T.nilable(String),
          event_types:
            T.nilable(
              T::Array[Believe::WebhookCreateParams::EventType::OrSymbol]
            ),
          request_options: Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The URL to send webhook events to
        url:,
        # Optional description for this webhook
        description: nil,
        # List of event types to subscribe to. If not provided, subscribes to all events.
        event_types: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
            description: T.nilable(String),
            event_types:
              T.nilable(
                T::Array[Believe::WebhookCreateParams::EventType::OrSymbol]
              ),
            request_options: Believe::RequestOptions
          }
        )
      end
      def to_hash
      end

      module EventType
        extend Believe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Believe::WebhookCreateParams::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MATCH_COMPLETED =
          T.let(
            :"match.completed",
            Believe::WebhookCreateParams::EventType::TaggedSymbol
          )
        TEAM_MEMBER_TRANSFERRED =
          T.let(
            :"team_member.transferred",
            Believe::WebhookCreateParams::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Believe::WebhookCreateParams::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
