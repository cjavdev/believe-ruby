# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Webhooks#trigger_event
    class WebhookTriggerEventParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute event_type
      #   The type of event to trigger
      #
      #   @return [Symbol, Believe::Models::WebhookTriggerEventParams::EventType]
      required :event_type, enum: -> { Believe::WebhookTriggerEventParams::EventType }

      # @!attribute payload
      #   Optional event payload. If not provided, a sample payload will be generated.
      #
      #   @return [Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted, Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred, nil]
      optional :payload, union: -> { Believe::WebhookTriggerEventParams::Payload }, nil?: true

      # @!method initialize(event_type:, payload: nil, request_options: {})
      #   @param event_type [Symbol, Believe::Models::WebhookTriggerEventParams::EventType] The type of event to trigger
      #
      #   @param payload [Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted, Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred, nil] Optional event payload. If not provided, a sample payload will be generated.
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]

      # The type of event to trigger
      module EventType
        extend Believe::Internal::Type::Enum

        MATCH_COMPLETED = :"match.completed"
        TEAM_MEMBER_TRANSFERRED = :"team_member.transferred"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Optional event payload. If not provided, a sample payload will be generated.
      module Payload
        extend Believe::Internal::Type::Union

        discriminator :event_type

        # Payload for match.completed event.
        variant :"match.completed", -> { Believe::WebhookTriggerEventParams::Payload::MatchCompleted }

        # Payload for team_member.transferred event.
        variant :"team_member.transferred",
                -> { Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred }

        class MatchCompleted < Believe::Internal::Type::BaseModel
          # @!attribute data
          #   Event data
          #
          #   @return [Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted::Data]
          required :data, -> { Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data }

          # @!attribute event_type
          #   The type of webhook event
          #
          #   @return [Symbol, Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted::EventType, nil]
          optional :event_type, enum: -> { Believe::WebhookTriggerEventParams::Payload::MatchCompleted::EventType }

          # @!method initialize(data:, event_type: nil)
          #   Payload for match.completed event.
          #
          #   @param data [Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted::Data] Event data
          #
          #   @param event_type [Symbol, Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted::EventType] The type of webhook event

          # @see Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted#data
          class Data < Believe::Internal::Type::BaseModel
            # @!attribute away_score
            #   Final away team score
            #
            #   @return [Integer]
            required :away_score, Integer

            # @!attribute away_team_id
            #   Away team ID
            #
            #   @return [String]
            required :away_team_id, String

            # @!attribute completed_at
            #   When the match completed
            #
            #   @return [Time]
            required :completed_at, Time

            # @!attribute home_score
            #   Final home team score
            #
            #   @return [Integer]
            required :home_score, Integer

            # @!attribute home_team_id
            #   Home team ID
            #
            #   @return [String]
            required :home_team_id, String

            # @!attribute match_id
            #   Unique match identifier
            #
            #   @return [String]
            required :match_id, String

            # @!attribute match_type
            #   Type of match
            #
            #   @return [Symbol, Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted::Data::MatchType]
            required :match_type,
                     enum: -> { Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::MatchType }

            # @!attribute result
            #   Match result from home team perspective
            #
            #   @return [Symbol, Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted::Data::Result]
            required :result, enum: -> { Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::Result }

            # @!attribute ted_post_match_quote
            #   Ted's post-match wisdom
            #
            #   @return [String]
            required :ted_post_match_quote, String

            # @!attribute lesson_learned
            #   Ted's lesson from the match
            #
            #   @return [String, nil]
            optional :lesson_learned, String, nil?: true

            # @!attribute man_of_the_match
            #   Player of the match (if awarded)
            #
            #   @return [String, nil]
            optional :man_of_the_match, String, nil?: true

            # @!method initialize(away_score:, away_team_id:, completed_at:, home_score:, home_team_id:, match_id:, match_type:, result:, ted_post_match_quote:, lesson_learned: nil, man_of_the_match: nil)
            #   Event data
            #
            #   @param away_score [Integer] Final away team score
            #
            #   @param away_team_id [String] Away team ID
            #
            #   @param completed_at [Time] When the match completed
            #
            #   @param home_score [Integer] Final home team score
            #
            #   @param home_team_id [String] Home team ID
            #
            #   @param match_id [String] Unique match identifier
            #
            #   @param match_type [Symbol, Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted::Data::MatchType] Type of match
            #
            #   @param result [Symbol, Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted::Data::Result] Match result from home team perspective
            #
            #   @param ted_post_match_quote [String] Ted's post-match wisdom
            #
            #   @param lesson_learned [String, nil] Ted's lesson from the match
            #
            #   @param man_of_the_match [String, nil] Player of the match (if awarded)

            # Type of match
            #
            # @see Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted::Data#match_type
            module MatchType
              extend Believe::Internal::Type::Enum

              LEAGUE = :league
              CUP = :cup
              FRIENDLY = :friendly
              PLAYOFF = :playoff
              FINAL = :final

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Match result from home team perspective
            #
            # @see Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted::Data#result
            module Result
              extend Believe::Internal::Type::Enum

              HOME_WIN = :home_win
              AWAY_WIN = :away_win
              DRAW = :draw

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # The type of webhook event
          #
          # @see Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted#event_type
          module EventType
            extend Believe::Internal::Type::Enum

            MATCH_COMPLETED = :"match.completed"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class TeamMemberTransferred < Believe::Internal::Type::BaseModel
          # @!attribute data
          #   Event data
          #
          #   @return [Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data]
          required :data, -> { Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data }

          # @!attribute event_type
          #   The type of webhook event
          #
          #   @return [Symbol, Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred::EventType, nil]
          optional :event_type,
                   enum: -> { Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::EventType }

          # @!method initialize(data:, event_type: nil)
          #   Payload for team_member.transferred event.
          #
          #   @param data [Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data] Event data
          #
          #   @param event_type [Symbol, Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred::EventType] The type of webhook event

          # @see Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred#data
          class Data < Believe::Internal::Type::BaseModel
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
            #   @return [Symbol, Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::MemberType]
            required :member_type,
                     enum: -> { Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::MemberType }

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
            #   @return [Symbol, Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::TransferType]
            required :transfer_type,
                     enum: -> { Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::TransferType }

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
            #   Event data
            #
            #   @param character_id [String] ID of the character (links to /characters)
            #
            #   @param character_name [String] Name of the character
            #
            #   @param member_type [Symbol, Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::MemberType] Type of team member
            #
            #   @param team_id [String] ID of the team involved
            #
            #   @param team_member_id [String] ID of the team member
            #
            #   @param team_name [String] Name of the team involved
            #
            #   @param ted_reaction [String] Ted's reaction to the transfer
            #
            #   @param transfer_type [Symbol, Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::TransferType] Whether the member joined or departed
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
            # @see Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data#member_type
            module MemberType
              extend Believe::Internal::Type::Enum

              PLAYER = :player
              COACH = :coach
              MEDICAL_STAFF = :medical_staff
              EQUIPMENT_MANAGER = :equipment_manager

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Whether the member joined or departed
            #
            # @see Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data#transfer_type
            module TransferType
              extend Believe::Internal::Type::Enum

              JOINED = :joined
              DEPARTED = :departed

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # The type of webhook event
          #
          # @see Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred#event_type
          module EventType
            extend Believe::Internal::Type::Enum

            TEAM_MEMBER_TRANSFERRED = :"team_member.transferred"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Believe::Models::WebhookTriggerEventParams::Payload::MatchCompleted, Believe::Models::WebhookTriggerEventParams::Payload::TeamMemberTransferred)]
      end
    end
  end
end
