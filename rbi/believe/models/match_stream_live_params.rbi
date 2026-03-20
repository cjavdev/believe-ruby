# typed: strong

module Believe
  module Models
    class MatchStreamLiveParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(::Believe::MatchStreamLiveParams, ::Believe::Internal::AnyHash)
        end

      # Away team name
      sig { returns(T.nilable(String)) }
      attr_reader :away_team

      sig { params(away_team: String).void }
      attr_writer :away_team

      # How eventful the match should be (1=boring, 10=chaos)
      sig { returns(T.nilable(Integer)) }
      attr_reader :excitement_level

      sig { params(excitement_level: Integer).void }
      attr_writer :excitement_level

      # Home team name
      sig { returns(T.nilable(String)) }
      attr_reader :home_team

      sig { params(home_team: String).void }
      attr_writer :home_team

      # Simulation speed multiplier (1.0 = real-time)
      sig { returns(T.nilable(Float)) }
      attr_reader :speed

      sig { params(speed: Float).void }
      attr_writer :speed

      sig do
        params(
          away_team: String,
          excitement_level: Integer,
          home_team: String,
          speed: Float,
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Away team name
        away_team: nil,
        # How eventful the match should be (1=boring, 10=chaos)
        excitement_level: nil,
        # Home team name
        home_team: nil,
        # Simulation speed multiplier (1.0 = real-time)
        speed: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            away_team: String,
            excitement_level: Integer,
            home_team: String,
            speed: Float,
            request_options: ::Believe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
