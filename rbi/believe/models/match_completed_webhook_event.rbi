# typed: strong

module Believe
  module Models
    class MatchCompletedWebhookEvent < ::Believe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ::Believe::MatchCompletedWebhookEvent,
            ::Believe::Internal::AnyHash
          )
        end

      # When the event was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Data payload for a match completed event.
      sig { returns(::Believe::MatchCompletedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: ::Believe::MatchCompletedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # Unique identifier for this event
      sig { returns(String) }
      attr_accessor :event_id

      # The type of webhook event
      sig do
        returns(::Believe::MatchCompletedWebhookEvent::EventType::TaggedSymbol)
      end
      attr_accessor :event_type

      # Webhook event sent when a match completes.
      sig do
        params(
          created_at: Time,
          data: ::Believe::MatchCompletedWebhookEvent::Data::OrHash,
          event_id: String,
          event_type: ::Believe::MatchCompletedWebhookEvent::EventType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # When the event was created
        created_at:,
        # Data payload for a match completed event.
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
            data: ::Believe::MatchCompletedWebhookEvent::Data,
            event_id: String,
            event_type:
              ::Believe::MatchCompletedWebhookEvent::EventType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < ::Believe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              ::Believe::MatchCompletedWebhookEvent::Data,
              ::Believe::Internal::AnyHash
            )
          end

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
        sig do
          returns(
            ::Believe::MatchCompletedWebhookEvent::Data::MatchType::TaggedSymbol
          )
        end
        attr_accessor :match_type

        # Match result from home team perspective
        sig do
          returns(
            ::Believe::MatchCompletedWebhookEvent::Data::Result::TaggedSymbol
          )
        end
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

        # Data payload for a match completed event.
        sig do
          params(
            away_score: Integer,
            away_team_id: String,
            completed_at: Time,
            home_score: Integer,
            home_team_id: String,
            match_id: String,
            match_type:
              ::Believe::MatchCompletedWebhookEvent::Data::MatchType::OrSymbol,
            result:
              ::Believe::MatchCompletedWebhookEvent::Data::Result::OrSymbol,
            ted_post_match_quote: String,
            lesson_learned: T.nilable(String),
            man_of_the_match: T.nilable(String)
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              away_score: Integer,
              away_team_id: String,
              completed_at: Time,
              home_score: Integer,
              home_team_id: String,
              match_id: String,
              match_type:
                ::Believe::MatchCompletedWebhookEvent::Data::MatchType::TaggedSymbol,
              result:
                ::Believe::MatchCompletedWebhookEvent::Data::Result::TaggedSymbol,
              ted_post_match_quote: String,
              lesson_learned: T.nilable(String),
              man_of_the_match: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Type of match
        module MatchType
          extend ::Believe::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ::Believe::MatchCompletedWebhookEvent::Data::MatchType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LEAGUE =
            T.let(
              :league,
              ::Believe::MatchCompletedWebhookEvent::Data::MatchType::TaggedSymbol
            )
          CUP =
            T.let(
              :cup,
              ::Believe::MatchCompletedWebhookEvent::Data::MatchType::TaggedSymbol
            )
          FRIENDLY =
            T.let(
              :friendly,
              ::Believe::MatchCompletedWebhookEvent::Data::MatchType::TaggedSymbol
            )
          PLAYOFF =
            T.let(
              :playoff,
              ::Believe::MatchCompletedWebhookEvent::Data::MatchType::TaggedSymbol
            )
          FINAL =
            T.let(
              :final,
              ::Believe::MatchCompletedWebhookEvent::Data::MatchType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ::Believe::MatchCompletedWebhookEvent::Data::MatchType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Match result from home team perspective
        module Result
          extend ::Believe::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, ::Believe::MatchCompletedWebhookEvent::Data::Result)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HOME_WIN =
            T.let(
              :home_win,
              ::Believe::MatchCompletedWebhookEvent::Data::Result::TaggedSymbol
            )
          AWAY_WIN =
            T.let(
              :away_win,
              ::Believe::MatchCompletedWebhookEvent::Data::Result::TaggedSymbol
            )
          DRAW =
            T.let(
              :draw,
              ::Believe::MatchCompletedWebhookEvent::Data::Result::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                ::Believe::MatchCompletedWebhookEvent::Data::Result::TaggedSymbol
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
            T.all(Symbol, ::Believe::MatchCompletedWebhookEvent::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MATCH_COMPLETED =
          T.let(
            :"match.completed",
            ::Believe::MatchCompletedWebhookEvent::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ::Believe::MatchCompletedWebhookEvent::EventType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
