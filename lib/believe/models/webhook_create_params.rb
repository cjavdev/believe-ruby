# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::Webhooks#create
    class WebhookCreateParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

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

      # @!attribute event_types
      #   List of event types to subscribe to. If not provided, subscribes to all events.
      #
      #   @return [Array<Symbol, ::Believe::Models::WebhookCreateParams::EventType>, nil]
      optional :event_types,
               -> { ::Believe::Internal::Type::ArrayOf[enum: ::Believe::WebhookCreateParams::EventType] },
               nil?: true

      # @!method initialize(url:, description: nil, event_types: nil, request_options: {})
      #   @param url [String] The URL to send webhook events to
      #
      #   @param description [String, nil] Optional description for this webhook
      #
      #   @param event_types [Array<Symbol, ::Believe::Models::WebhookCreateParams::EventType>, nil] List of event types to subscribe to. If not provided, subscribes to all events.
      #
      #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]

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
