# typed: strong

module Believe
  module Models
    class TeamMemberTransferredWebhookEvent < ::Believe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ::Believe::TeamMemberTransferredWebhookEvent,
            ::Believe::Internal::AnyHash
          )
        end

      # When the event was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Data payload for a team member transfer event.
      sig { returns(::Believe::TeamMemberTransferredWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: ::Believe::TeamMemberTransferredWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # Unique identifier for this event
      sig { returns(String) }
      attr_accessor :event_id

      # The type of webhook event
      sig do
        returns(
          ::Believe::TeamMemberTransferredWebhookEvent::EventType::TaggedSymbol
        )
      end
      attr_accessor :event_type

      # Webhook event sent when a team member (player, coach, staff) transfers between teams.
      sig do
        params(
          created_at: Time,
          data: ::Believe::TeamMemberTransferredWebhookEvent::Data::OrHash,
          event_id: String,
          event_type:
            ::Believe::TeamMemberTransferredWebhookEvent::EventType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # When the event was created
        created_at:,
        # Data payload for a team member transfer event.
        data:,
        # Unique identifier for this event
        event_id:,
        # The type of webhook event
        event_type:
      )
      end

      sig do
        override.returns(
          {
            created_at: Time,
            data: ::Believe::TeamMemberTransferredWebhookEvent::Data,
            event_id: String,
            event_type:
              ::Believe::TeamMemberTransferredWebhookEvent::EventType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < ::Believe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ::Believe::TeamMemberTransferredWebhookEvent::Data,
              ::Believe::Internal::AnyHash
            )
          end

        # ID of the character (links to /characters)
        sig { returns(String) }
        attr_accessor :character_id

        # Name of the character
        sig { returns(String) }
        attr_accessor :character_name

        # Type of team member
        sig do
          returns(
            ::Believe::TeamMemberTransferredWebhookEvent::Data::MemberType::TaggedSymbol
          )
        end
        attr_accessor :member_type

        # ID of the team involved
        sig { returns(String) }
        attr_accessor :team_id

        # ID of the team member
        sig { returns(String) }
        attr_accessor :team_member_id

        # Name of the team involved
        sig { returns(String) }
        attr_accessor :team_name

        # Ted's reaction to the transfer
        sig { returns(String) }
        attr_accessor :ted_reaction

        # Whether the member joined or departed
        sig do
          returns(
            ::Believe::TeamMemberTransferredWebhookEvent::Data::TransferType::TaggedSymbol
          )
        end
        attr_accessor :transfer_type

        # Previous team ID (for joins from another team)
        sig { returns(T.nilable(String)) }
        attr_accessor :previous_team_id

        # Previous team name (for joins from another team)
        sig { returns(T.nilable(String)) }
        attr_accessor :previous_team_name

        # Transfer fee in GBP (for players)
        sig { returns(T.nilable(String)) }
        attr_accessor :transfer_fee_gbp

        # Years spent with previous team
        sig { returns(T.nilable(Integer)) }
        attr_accessor :years_with_previous_team

        # Data payload for a team member transfer event.
        sig do
          params(
            character_id: String,
            character_name: String,
            member_type:
              ::Believe::TeamMemberTransferredWebhookEvent::Data::MemberType::OrSymbol,
            team_id: String,
            team_member_id: String,
            team_name: String,
            ted_reaction: String,
            transfer_type:
              ::Believe::TeamMemberTransferredWebhookEvent::Data::TransferType::OrSymbol,
            previous_team_id: T.nilable(String),
            previous_team_name: T.nilable(String),
            transfer_fee_gbp: T.nilable(String),
            years_with_previous_team: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the character (links to /characters)
          character_id:,
          # Name of the character
          character_name:,
          # Type of team member
          member_type:,
          # ID of the team involved
          team_id:,
          # ID of the team member
          team_member_id:,
          # Name of the team involved
          team_name:,
          # Ted's reaction to the transfer
          ted_reaction:,
          # Whether the member joined or departed
          transfer_type:,
          # Previous team ID (for joins from another team)
          previous_team_id: nil,
          # Previous team name (for joins from another team)
          previous_team_name: nil,
          # Transfer fee in GBP (for players)
          transfer_fee_gbp: nil,
          # Years spent with previous team
          years_with_previous_team: nil
        )
        end

        sig do
          override.returns(
            {
              character_id: String,
              character_name: String,
              member_type:
                ::Believe::TeamMemberTransferredWebhookEvent::Data::MemberType::TaggedSymbol,
              team_id: String,
              team_member_id: String,
              team_name: String,
              ted_reaction: String,
              transfer_type:
                ::Believe::TeamMemberTransferredWebhookEvent::Data::TransferType::TaggedSymbol,
              previous_team_id: T.nilable(String),
              previous_team_name: T.nilable(String),
              transfer_fee_gbp: T.nilable(String),
              years_with_previous_team: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end

        # Type of team member
        module MemberType
          extend ::Believe::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ::Believe::TeamMemberTransferredWebhookEvent::Data::MemberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PLAYER =
            T.let(
              :player,
              ::Believe::TeamMemberTransferredWebhookEvent::Data::MemberType::TaggedSymbol
            )
          COACH =
            T.let(
              :coach,
              ::Believe::TeamMemberTransferredWebhookEvent::Data::MemberType::TaggedSymbol
            )
          MEDICAL_STAFF =
            T.let(
              :medical_staff,
              ::Believe::TeamMemberTransferredWebhookEvent::Data::MemberType::TaggedSymbol
            )
          EQUIPMENT_MANAGER =
            T.let(
              :equipment_manager,
              ::Believe::TeamMemberTransferredWebhookEvent::Data::MemberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ::Believe::TeamMemberTransferredWebhookEvent::Data::MemberType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether the member joined or departed
        module TransferType
          extend ::Believe::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ::Believe::TeamMemberTransferredWebhookEvent::Data::TransferType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          JOINED =
            T.let(
              :joined,
              ::Believe::TeamMemberTransferredWebhookEvent::Data::TransferType::TaggedSymbol
            )
          DEPARTED =
            T.let(
              :departed,
              ::Believe::TeamMemberTransferredWebhookEvent::Data::TransferType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ::Believe::TeamMemberTransferredWebhookEvent::Data::TransferType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The type of webhook event
      module EventType
        extend ::Believe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ::Believe::TeamMemberTransferredWebhookEvent::EventType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TEAM_MEMBER_TRANSFERRED =
          T.let(
            :"team_member.transferred",
            ::Believe::TeamMemberTransferredWebhookEvent::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ::Believe::TeamMemberTransferredWebhookEvent::EventType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
