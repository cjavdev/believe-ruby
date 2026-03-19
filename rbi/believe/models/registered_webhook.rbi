# typed: strong

module Believe
  module Models
    class RegisteredWebhook < Believe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Believe::RegisteredWebhook, Believe::Internal::AnyHash)
        end

      # Unique webhook identifier
      sig { returns(String) }
      attr_accessor :id

      # When the webhook was registered
      sig { returns(Time) }
      attr_accessor :created_at

      # List of event types this webhook is subscribed to
      sig do
        returns(T::Array[Believe::RegisteredWebhook::EventType::TaggedSymbol])
      end
      attr_accessor :event_types

      # The secret key for verifying webhook signatures (base64 encoded)
      sig { returns(String) }
      attr_accessor :secret

      # The URL to send webhook events to
      sig { returns(String) }
      attr_accessor :url

      # Optional description for this webhook
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # A registered webhook endpoint.
      sig do
        params(
          id: String,
          created_at: Time,
          event_types:
            T::Array[Believe::RegisteredWebhook::EventType::OrSymbol],
          secret: String,
          url: String,
          description: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique webhook identifier
        id:,
        # When the webhook was registered
        created_at:,
        # List of event types this webhook is subscribed to
        event_types:,
        # The secret key for verifying webhook signatures (base64 encoded)
        secret:,
        # The URL to send webhook events to
        url:,
        # Optional description for this webhook
        description: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            event_types:
              T::Array[Believe::RegisteredWebhook::EventType::TaggedSymbol],
            secret: String,
            url: String,
            description: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module EventType
        extend Believe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Believe::RegisteredWebhook::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MATCH_COMPLETED =
          T.let(
            :"match.completed",
            Believe::RegisteredWebhook::EventType::TaggedSymbol
          )
        TEAM_MEMBER_TRANSFERRED =
          T.let(
            :"team_member.transferred",
            Believe::RegisteredWebhook::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Believe::RegisteredWebhook::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
