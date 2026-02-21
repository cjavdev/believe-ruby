# frozen_string_literal: true

module Believe
  module Models
    class MatchCompletedWebhookEvent < Believe::Internal::Type::BaseModel
      # @!attribute created_at
      #   When the event was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute data
      #   Data payload for a match completed event.
      #
      #   @return [Believe::Models::MatchCompletedWebhookEvent::Data]
      required :data, -> { Believe::MatchCompletedWebhookEvent::Data }

      # @!attribute event_id
      #   Unique identifier for this event
      #
      #   @return [String]
      required :event_id, String

      # @!attribute event_type
      #   The type of webhook event
      #
      #   @return [Symbol, Believe::Models::MatchCompletedWebhookEvent::EventType]
      required :event_type, enum: -> { Believe::MatchCompletedWebhookEvent::EventType }

      # @!method initialize(created_at:, data:, event_id:, event_type:)
      #   Webhook event sent when a match completes.
      #
      #   @param created_at [Time] When the event was created
      #
      #   @param data [Believe::Models::MatchCompletedWebhookEvent::Data] Data payload for a match completed event.
      #
      #   @param event_id [String] Unique identifier for this event
      #
      #   @param event_type [Symbol, Believe::Models::MatchCompletedWebhookEvent::EventType] The type of webhook event

      # @see Believe::Models::MatchCompletedWebhookEvent#data
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
        #   @return [Symbol, Believe::Models::MatchCompletedWebhookEvent::Data::MatchType]
        required :match_type, enum: -> { Believe::MatchCompletedWebhookEvent::Data::MatchType }

        # @!attribute result
        #   Match result from home team perspective
        #
        #   @return [Symbol, Believe::Models::MatchCompletedWebhookEvent::Data::Result]
        required :result, enum: -> { Believe::MatchCompletedWebhookEvent::Data::Result }

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
        #   Data payload for a match completed event.
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
        #   @param match_type [Symbol, Believe::Models::MatchCompletedWebhookEvent::Data::MatchType] Type of match
        #
        #   @param result [Symbol, Believe::Models::MatchCompletedWebhookEvent::Data::Result] Match result from home team perspective
        #
        #   @param ted_post_match_quote [String] Ted's post-match wisdom
        #
        #   @param lesson_learned [String, nil] Ted's lesson from the match
        #
        #   @param man_of_the_match [String, nil] Player of the match (if awarded)

        # Type of match
        #
        # @see Believe::Models::MatchCompletedWebhookEvent::Data#match_type
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
        # @see Believe::Models::MatchCompletedWebhookEvent::Data#result
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
      # @see Believe::Models::MatchCompletedWebhookEvent#event_type
      module EventType
        extend Believe::Internal::Type::Enum

        MATCH_COMPLETED = :"match.completed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
