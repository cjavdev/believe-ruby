# typed: strong

module Believe
  module Models
    class WebhookTriggerEventParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::WebhookTriggerEventParams, ::Believe::Internal::AnyHash) }

      # The type of event to trigger
      sig { returns(::Believe::WebhookTriggerEventParams::EventType::OrSymbol) }
      attr_accessor :event_type

      # Optional event payload. If not provided, a sample payload will be generated.
      sig do
        returns(
          T.nilable(
            T.any(
              ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted,
              ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred
            )
          )
        )
      end
      attr_accessor :payload

      sig do
        params(
          event_type: ::Believe::WebhookTriggerEventParams::EventType::OrSymbol,
          payload: T.nilable(
            T.any(
              ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::OrHash,
              ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::OrHash
            )
          ),
          request_options: ::Believe::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        # The type of event to trigger
      event_type:,
        # Optional event payload. If not provided, a sample payload will be generated.
      payload: nil,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              event_type: ::Believe::WebhookTriggerEventParams::EventType::OrSymbol,
              payload: T.nilable(
                T.any(
                  ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted,
                  ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred
                )
              ),
              request_options: ::Believe::RequestOptions
            }
          )
      end
      def to_hash; end

      # The type of event to trigger
      module EventType
        extend ::Believe::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ::Believe::WebhookTriggerEventParams::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MATCH_COMPLETED =
          T.let(:"match.completed", ::Believe::WebhookTriggerEventParams::EventType::TaggedSymbol)
        TEAM_MEMBER_TRANSFERRED =
          T.let(:"team_member.transferred", ::Believe::WebhookTriggerEventParams::EventType::TaggedSymbol)

        sig { override.returns(T::Array[::Believe::WebhookTriggerEventParams::EventType::TaggedSymbol]) }
        def self.values; end
      end

      # Optional event payload. If not provided, a sample payload will be generated.
      module Payload
        extend ::Believe::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted,
              ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred
            )
          end

        class MatchCompleted < ::Believe::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(::Believe::WebhookTriggerEventParams::Payload::MatchCompleted, ::Believe::Internal::AnyHash) }

          # Event data
          sig { returns(::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data) }
          attr_reader :data

          sig { params(data: ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::OrHash).void }
          attr_writer :data

          # The type of webhook event
          sig { returns(T.nilable(::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::EventType::OrSymbol)) }
          attr_reader :event_type

          sig do
            params(event_type: ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::EventType::OrSymbol).void
          end
          attr_writer :event_type

          # Payload for match.completed event.
          sig do
            params(
              data: ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::OrHash,
              event_type: ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::EventType::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            # Event data
          data:,
            # The type of webhook event
          event_type: nil
          ); end

          sig do
            override
              .returns(
                {
                  data: ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data,
                  event_type: ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::EventType::OrSymbol
                }
              )
          end
          def to_hash; end

          class Data < ::Believe::Internal::Type::BaseModel
            OrHash =
              T.type_alias { T.any(::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data, ::Believe::Internal::AnyHash) }

            # Final away team score
            sig { returns(Integer) }
            attr_accessor :away_score

            # Away team ID
            sig { returns(String) }
            attr_accessor :away_team_id

            # When the match completed
            sig { returns(Time) }
            attr_accessor :completed_at

            # Final home team score
            sig { returns(Integer) }
            attr_accessor :home_score

            # Home team ID
            sig { returns(String) }
            attr_accessor :home_team_id

            # Unique match identifier
            sig { returns(String) }
            attr_accessor :match_id

            # Type of match
            sig { returns(::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::MatchType::OrSymbol) }
            attr_accessor :match_type

            # Match result from home team perspective
            sig { returns(::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::Result::OrSymbol) }
            attr_accessor :result

            # Ted's post-match wisdom
            sig { returns(String) }
            attr_accessor :ted_post_match_quote

            # Ted's lesson from the match
            sig { returns(T.nilable(String)) }
            attr_accessor :lesson_learned

            # Player of the match (if awarded)
            sig { returns(T.nilable(String)) }
            attr_accessor :man_of_the_match

            # Event data
            sig do
              params(
                away_score: Integer,
                away_team_id: String,
                completed_at: Time,
                home_score: Integer,
                home_team_id: String,
                match_id: String,
                match_type: ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::MatchType::OrSymbol,
                result: ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::Result::OrSymbol,
                ted_post_match_quote: String,
                lesson_learned: T.nilable(String),
                man_of_the_match: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(
              # Final away team score
            away_score:,
              # Away team ID
            away_team_id:,
              # When the match completed
            completed_at:,
              # Final home team score
            home_score:,
              # Home team ID
            home_team_id:,
              # Unique match identifier
            match_id:,
              # Type of match
            match_type:,
              # Match result from home team perspective
            result:,
              # Ted's post-match wisdom
            ted_post_match_quote:,
              # Ted's lesson from the match
            lesson_learned: nil,
              # Player of the match (if awarded)
            man_of_the_match: nil
            ); end

            sig do
              override
                .returns(
                  {
                    away_score: Integer,
                    away_team_id: String,
                    completed_at: Time,
                    home_score: Integer,
                    home_team_id: String,
                    match_id: String,
                    match_type: ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::MatchType::OrSymbol,
                    result: ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::Result::OrSymbol,
                    ted_post_match_quote: String,
                    lesson_learned: T.nilable(String),
                    man_of_the_match: T.nilable(String)
                  }
                )
            end
            def to_hash; end

            # Type of match
            module MatchType
              extend ::Believe::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::MatchType) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              LEAGUE =
                T.let(
                  :league,
                  ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::MatchType::TaggedSymbol
                )
              CUP =
                T.let(:cup, ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::MatchType::TaggedSymbol)
              FRIENDLY =
                T.let(
                  :friendly,
                  ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::MatchType::TaggedSymbol
                )
              PLAYOFF =
                T.let(
                  :playoff,
                  ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::MatchType::TaggedSymbol
                )
              FINAL =
                T.let(
                  :final,
                  ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::MatchType::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::MatchType::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            # Match result from home team perspective
            module Result
              extend ::Believe::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::Result) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              HOME_WIN =
                T.let(
                  :home_win,
                  ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::Result::TaggedSymbol
                )
              AWAY_WIN =
                T.let(
                  :away_win,
                  ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::Result::TaggedSymbol
                )
              DRAW =
                T.let(:draw, ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::Result::TaggedSymbol)

              sig do
                override
                  .returns(
                    T::Array[::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::Data::Result::TaggedSymbol]
                  )
              end
              def self.values; end
            end
          end

          # The type of webhook event
          module EventType
            extend ::Believe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::EventType) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MATCH_COMPLETED =
              T.let(
                :"match.completed",
                ::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::EventType::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[::Believe::WebhookTriggerEventParams::Payload::MatchCompleted::EventType::TaggedSymbol])
            end
            def self.values; end
          end
        end

        class TeamMemberTransferred < ::Believe::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred, ::Believe::Internal::AnyHash) }

          # Event data
          sig { returns(::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data) }
          attr_reader :data

          sig { params(data: ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::OrHash).void }
          attr_writer :data

          # The type of webhook event
          sig do
            returns(
              T.nilable(::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::EventType::OrSymbol)
            )
          end
          attr_reader :event_type

          sig do
            params(
              event_type: ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::EventType::OrSymbol
            )
              .void
          end
          attr_writer :event_type

          # Payload for team_member.transferred event.
          sig do
            params(
              data: ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::OrHash,
              event_type: ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::EventType::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            # Event data
          data:,
            # The type of webhook event
          event_type: nil
          ); end

          sig do
            override
              .returns(
                {
                  data: ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data,
                  event_type: ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::EventType::OrSymbol
                }
              )
          end
          def to_hash; end

          class Data < ::Believe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data,
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
            sig { returns(::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::MemberType::OrSymbol) }
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
                ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::TransferType::OrSymbol
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

            # Event data
            sig do
              params(
                character_id: String,
                character_name: String,
                member_type: ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::MemberType::OrSymbol,
                team_id: String,
                team_member_id: String,
                team_name: String,
                ted_reaction: String,
                transfer_type: ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::TransferType::OrSymbol,
                previous_team_id: T.nilable(String),
                previous_team_name: T.nilable(String),
                transfer_fee_gbp: T.nilable(String),
                years_with_previous_team: T.nilable(Integer)
              )
                .returns(T.attached_class)
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
            ); end

            sig do
              override
                .returns(
                  {
                    character_id: String,
                    character_name: String,
                    member_type: ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::MemberType::OrSymbol,
                    team_id: String,
                    team_member_id: String,
                    team_name: String,
                    ted_reaction: String,
                    transfer_type: ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::TransferType::OrSymbol,
                    previous_team_id: T.nilable(String),
                    previous_team_name: T.nilable(String),
                    transfer_fee_gbp: T.nilable(String),
                    years_with_previous_team: T.nilable(Integer)
                  }
                )
            end
            def to_hash; end

            # Type of team member
            module MemberType
              extend ::Believe::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::MemberType) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PLAYER =
                T.let(
                  :player,
                  ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::MemberType::TaggedSymbol
                )
              COACH =
                T.let(
                  :coach,
                  ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::MemberType::TaggedSymbol
                )
              MEDICAL_STAFF =
                T.let(
                  :medical_staff,
                  ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::MemberType::TaggedSymbol
                )
              EQUIPMENT_MANAGER =
                T.let(
                  :equipment_manager,
                  ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::MemberType::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::MemberType::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            # Whether the member joined or departed
            module TransferType
              extend ::Believe::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::TransferType) }
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              JOINED =
                T.let(
                  :joined,
                  ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::TransferType::TaggedSymbol
                )
              DEPARTED =
                T.let(
                  :departed,
                  ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::TransferType::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::Data::TransferType::TaggedSymbol]
                  )
              end
              def self.values; end
            end
          end

          # The type of webhook event
          module EventType
            extend ::Believe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::EventType) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TEAM_MEMBER_TRANSFERRED =
              T.let(
                :"team_member.transferred",
                ::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::EventType::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[::Believe::WebhookTriggerEventParams::Payload::TeamMemberTransferred::EventType::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        sig { override.returns(T::Array[::Believe::WebhookTriggerEventParams::Payload::Variants]) }
        def self.variants; end
      end
    end
  end
end
