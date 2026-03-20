# frozen_string_literal: true

module Believe
  module Models
    class TeamMemberTransferredWebhookEvent < ::Believe::Internal::Type::BaseModel
      # @!attribute created_at
      #   When the event was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute data
      #   Data payload for a team member transfer event.
      #
      #   @return [::Believe::Models::TeamMemberTransferredWebhookEvent::Data]
      required :data, -> { ::Believe::TeamMemberTransferredWebhookEvent::Data }

      # @!attribute event_id
      #   Unique identifier for this event
      #
      #   @return [String]
      required :event_id, String

      # @!attribute event_type
      #   The type of webhook event
      #
      #   @return [Symbol, ::Believe::Models::TeamMemberTransferredWebhookEvent::EventType]
      required :event_type, enum: -> { ::Believe::TeamMemberTransferredWebhookEvent::EventType }

      # @!method initialize(created_at:, data:, event_id:, event_type:)
      #   Webhook event sent when a team member (player, coach, staff) transfers between
      #   teams.
      #
      #   @param created_at [Time] When the event was created
      #
      #   @param data [::Believe::Models::TeamMemberTransferredWebhookEvent::Data] Data payload for a team member transfer event.
      #
      #   @param event_id [String] Unique identifier for this event
      #
      #   @param event_type [Symbol, ::Believe::Models::TeamMemberTransferredWebhookEvent::EventType] The type of webhook event

      # @see ::Believe::Models::TeamMemberTransferredWebhookEvent#data
      class Data < ::Believe::Internal::Type::BaseModel
        # @!attribute character_id
        #   ID of the character (links to /characters)
        #
        #   @return [String]
        required :character_id, String

        # @!attribute character_name
        #   Name of the character
        #
        #   @return [String]
        required :character_name, String

        # @!attribute member_type
        #   Type of team member
        #
        #   @return [Symbol, ::Believe::Models::TeamMemberTransferredWebhookEvent::Data::MemberType]
        required :member_type, enum: -> { ::Believe::TeamMemberTransferredWebhookEvent::Data::MemberType }

        # @!attribute team_id
        #   ID of the team involved
        #
        #   @return [String]
        required :team_id, String

        # @!attribute team_member_id
        #   ID of the team member
        #
        #   @return [String]
        required :team_member_id, String

        # @!attribute team_name
        #   Name of the team involved
        #
        #   @return [String]
        required :team_name, String

        # @!attribute ted_reaction
        #   Ted's reaction to the transfer
        #
        #   @return [String]
        required :ted_reaction, String

        # @!attribute transfer_type
        #   Whether the member joined or departed
        #
        #   @return [Symbol, ::Believe::Models::TeamMemberTransferredWebhookEvent::Data::TransferType]
        required :transfer_type, enum: -> { ::Believe::TeamMemberTransferredWebhookEvent::Data::TransferType }

        # @!attribute previous_team_id
        #   Previous team ID (for joins from another team)
        #
        #   @return [String, nil]
        optional :previous_team_id, String, nil?: true

        # @!attribute previous_team_name
        #   Previous team name (for joins from another team)
        #
        #   @return [String, nil]
        optional :previous_team_name, String, nil?: true

        # @!attribute transfer_fee_gbp
        #   Transfer fee in GBP (for players)
        #
        #   @return [String, nil]
        optional :transfer_fee_gbp, String, nil?: true

        # @!attribute years_with_previous_team
        #   Years spent with previous team
        #
        #   @return [Integer, nil]
        optional :years_with_previous_team, Integer, nil?: true

        # @!method initialize(character_id:, character_name:, member_type:, team_id:, team_member_id:, team_name:, ted_reaction:, transfer_type:, previous_team_id: nil, previous_team_name: nil, transfer_fee_gbp: nil, years_with_previous_team: nil)
        #   Data payload for a team member transfer event.
        #
        #   @param character_id [String] ID of the character (links to /characters)
        #
        #   @param character_name [String] Name of the character
        #
        #   @param member_type [Symbol, ::Believe::Models::TeamMemberTransferredWebhookEvent::Data::MemberType] Type of team member
        #
        #   @param team_id [String] ID of the team involved
        #
        #   @param team_member_id [String] ID of the team member
        #
        #   @param team_name [String] Name of the team involved
        #
        #   @param ted_reaction [String] Ted's reaction to the transfer
        #
        #   @param transfer_type [Symbol, ::Believe::Models::TeamMemberTransferredWebhookEvent::Data::TransferType] Whether the member joined or departed
        #
        #   @param previous_team_id [String, nil] Previous team ID (for joins from another team)
        #
        #   @param previous_team_name [String, nil] Previous team name (for joins from another team)
        #
        #   @param transfer_fee_gbp [String, nil] Transfer fee in GBP (for players)
        #
        #   @param years_with_previous_team [Integer, nil] Years spent with previous team

        # Type of team member
        #
        # @see ::Believe::Models::TeamMemberTransferredWebhookEvent::Data#member_type
        module MemberType
          extend ::Believe::Internal::Type::Enum

          PLAYER = :player
          COACH = :coach
          MEDICAL_STAFF = :medical_staff
          EQUIPMENT_MANAGER = :equipment_manager

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether the member joined or departed
        #
        # @see ::Believe::Models::TeamMemberTransferredWebhookEvent::Data#transfer_type
        module TransferType
          extend ::Believe::Internal::Type::Enum

          JOINED = :joined
          DEPARTED = :departed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The type of webhook event
      #
      # @see ::Believe::Models::TeamMemberTransferredWebhookEvent#event_type
      module EventType
        extend ::Believe::Internal::Type::Enum

        TEAM_MEMBER_TRANSFERRED = :"team_member.transferred"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
