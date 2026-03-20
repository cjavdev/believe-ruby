# typed: strong

module Believe
  module Models
    class MatchUpdateParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(::Believe::MatchUpdateParams, ::Believe::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :match_id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :attendance

      sig { returns(T.nilable(Integer)) }
      attr_accessor :away_score

      sig { returns(T.nilable(String)) }
      attr_accessor :away_team_id

      sig { returns(T.nilable(Time)) }
      attr_accessor :date

      sig { returns(T.nilable(String)) }
      attr_accessor :episode_id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :home_score

      sig { returns(T.nilable(String)) }
      attr_accessor :home_team_id

      sig { returns(T.nilable(String)) }
      attr_accessor :lesson_learned

      # Types of matches.
      sig { returns(T.nilable(::Believe::MatchType::OrSymbol)) }
      attr_accessor :match_type

      sig { returns(T.nilable(Float)) }
      attr_accessor :possession_percentage

      # Match result types.
      sig { returns(T.nilable(::Believe::MatchResult::OrSymbol)) }
      attr_accessor :result

      sig { returns(T.nilable(String)) }
      attr_accessor :ted_halftime_speech

      sig do
        returns(
          T.nilable(::Believe::MatchUpdateParams::TicketRevenueGbp::Variants)
        )
      end
      attr_accessor :ticket_revenue_gbp

      sig { returns(T.nilable(T::Array[::Believe::TurningPoint])) }
      attr_accessor :turning_points

      sig { returns(T.nilable(Float)) }
      attr_accessor :weather_temp_celsius

      sig do
        params(
          match_id: String,
          attendance: T.nilable(Integer),
          away_score: T.nilable(Integer),
          away_team_id: T.nilable(String),
          date: T.nilable(Time),
          episode_id: T.nilable(String),
          home_score: T.nilable(Integer),
          home_team_id: T.nilable(String),
          lesson_learned: T.nilable(String),
          match_type: T.nilable(::Believe::MatchType::OrSymbol),
          possession_percentage: T.nilable(Float),
          result: T.nilable(::Believe::MatchResult::OrSymbol),
          ted_halftime_speech: T.nilable(String),
          ticket_revenue_gbp:
            T.nilable(::Believe::MatchUpdateParams::TicketRevenueGbp::Variants),
          turning_points: T.nilable(T::Array[::Believe::TurningPoint::OrHash]),
          weather_temp_celsius: T.nilable(Float),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        match_id:,
        attendance: nil,
        away_score: nil,
        away_team_id: nil,
        date: nil,
        episode_id: nil,
        home_score: nil,
        home_team_id: nil,
        lesson_learned: nil,
        # Types of matches.
        match_type: nil,
        possession_percentage: nil,
        # Match result types.
        result: nil,
        ted_halftime_speech: nil,
        ticket_revenue_gbp: nil,
        turning_points: nil,
        weather_temp_celsius: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            match_id: String,
            attendance: T.nilable(Integer),
            away_score: T.nilable(Integer),
            away_team_id: T.nilable(String),
            date: T.nilable(Time),
            episode_id: T.nilable(String),
            home_score: T.nilable(Integer),
            home_team_id: T.nilable(String),
            lesson_learned: T.nilable(String),
            match_type: T.nilable(::Believe::MatchType::OrSymbol),
            possession_percentage: T.nilable(Float),
            result: T.nilable(::Believe::MatchResult::OrSymbol),
            ted_halftime_speech: T.nilable(String),
            ticket_revenue_gbp:
              T.nilable(
                ::Believe::MatchUpdateParams::TicketRevenueGbp::Variants
              ),
            turning_points: T.nilable(T::Array[::Believe::TurningPoint]),
            weather_temp_celsius: T.nilable(Float),
            request_options: ::Believe::RequestOptions
          }
        )
      end
      def to_hash
      end

      module TicketRevenueGbp
        extend ::Believe::Internal::Type::Union

        Variants = T.type_alias { T.any(Float, String) }

        sig do
          override.returns(
            T::Array[::Believe::MatchUpdateParams::TicketRevenueGbp::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
