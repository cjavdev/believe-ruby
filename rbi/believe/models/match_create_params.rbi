# typed: strong

module Believe
  module Models
    class MatchCreateParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Believe::MatchCreateParams, Believe::Internal::AnyHash)
        end

      # Away team ID
      sig { returns(String) }
      attr_accessor :away_team_id

      # Match date and time
      sig { returns(Time) }
      attr_accessor :date

      # Home team ID
      sig { returns(String) }
      attr_accessor :home_team_id

      # Type of match
      sig { returns(Believe::MatchType::OrSymbol) }
      attr_accessor :match_type

      # Match attendance
      sig { returns(T.nilable(Integer)) }
      attr_accessor :attendance

      # Away team score
      sig { returns(T.nilable(Integer)) }
      attr_reader :away_score

      sig { params(away_score: Integer).void }
      attr_writer :away_score

      # Episode ID where this match is featured
      sig { returns(T.nilable(String)) }
      attr_accessor :episode_id

      # Home team score
      sig { returns(T.nilable(Integer)) }
      attr_reader :home_score

      sig { params(home_score: Integer).void }
      attr_writer :home_score

      # The life lesson learned from this match
      sig { returns(T.nilable(String)) }
      attr_accessor :lesson_learned

      # Home team possession percentage
      sig { returns(T.nilable(Float)) }
      attr_accessor :possession_percentage

      # Match result from home team perspective
      sig { returns(T.nilable(Believe::MatchResult::OrSymbol)) }
      attr_reader :result

      sig { params(result: Believe::MatchResult::OrSymbol).void }
      attr_writer :result

      # Ted's inspirational halftime speech
      sig { returns(T.nilable(String)) }
      attr_accessor :ted_halftime_speech

      # Total ticket revenue in GBP
      sig do
        returns(
          T.nilable(Believe::MatchCreateParams::TicketRevenueGbp::Variants)
        )
      end
      attr_accessor :ticket_revenue_gbp

      # Key moments that changed the match
      sig { returns(T.nilable(T::Array[Believe::TurningPoint])) }
      attr_reader :turning_points

      sig do
        params(turning_points: T::Array[Believe::TurningPoint::OrHash]).void
      end
      attr_writer :turning_points

      # Temperature at kickoff in Celsius
      sig { returns(T.nilable(Float)) }
      attr_accessor :weather_temp_celsius

      sig do
        params(
          away_team_id: String,
          date: Time,
          home_team_id: String,
          match_type: Believe::MatchType::OrSymbol,
          attendance: T.nilable(Integer),
          away_score: Integer,
          episode_id: T.nilable(String),
          home_score: Integer,
          lesson_learned: T.nilable(String),
          possession_percentage: T.nilable(Float),
          result: Believe::MatchResult::OrSymbol,
          ted_halftime_speech: T.nilable(String),
          ticket_revenue_gbp:
            T.nilable(Believe::MatchCreateParams::TicketRevenueGbp::Variants),
          turning_points: T::Array[Believe::TurningPoint::OrHash],
          weather_temp_celsius: T.nilable(Float),
          request_options: Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Away team ID
        away_team_id:,
        # Match date and time
        date:,
        # Home team ID
        home_team_id:,
        # Type of match
        match_type:,
        # Match attendance
        attendance: nil,
        # Away team score
        away_score: nil,
        # Episode ID where this match is featured
        episode_id: nil,
        # Home team score
        home_score: nil,
        # The life lesson learned from this match
        lesson_learned: nil,
        # Home team possession percentage
        possession_percentage: nil,
        # Match result from home team perspective
        result: nil,
        # Ted's inspirational halftime speech
        ted_halftime_speech: nil,
        # Total ticket revenue in GBP
        ticket_revenue_gbp: nil,
        # Key moments that changed the match
        turning_points: nil,
        # Temperature at kickoff in Celsius
        weather_temp_celsius: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            away_team_id: String,
            date: Time,
            home_team_id: String,
            match_type: Believe::MatchType::OrSymbol,
            attendance: T.nilable(Integer),
            away_score: Integer,
            episode_id: T.nilable(String),
            home_score: Integer,
            lesson_learned: T.nilable(String),
            possession_percentage: T.nilable(Float),
            result: Believe::MatchResult::OrSymbol,
            ted_halftime_speech: T.nilable(String),
            ticket_revenue_gbp:
              T.nilable(Believe::MatchCreateParams::TicketRevenueGbp::Variants),
            turning_points: T::Array[Believe::TurningPoint],
            weather_temp_celsius: T.nilable(Float),
            request_options: Believe::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Total ticket revenue in GBP
      module TicketRevenueGbp
        extend Believe::Internal::Type::Union

        Variants = T.type_alias { T.any(Float, String) }

        sig do
          override.returns(
            T::Array[Believe::MatchCreateParams::TicketRevenueGbp::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
