# typed: strong

module Believe
  module Models
    class MatchListParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(::Believe::MatchListParams, ::Believe::Internal::AnyHash)
        end

      # Maximum number of items to return (max: 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Filter by match type
      sig { returns(T.nilable(::Believe::MatchType::OrSymbol)) }
      attr_accessor :match_type

      # Filter by result
      sig { returns(T.nilable(::Believe::MatchResult::OrSymbol)) }
      attr_accessor :result

      # Number of items to skip (offset)
      sig { returns(T.nilable(Integer)) }
      attr_reader :skip

      sig { params(skip: Integer).void }
      attr_writer :skip

      # Filter by team (home or away)
      sig { returns(T.nilable(String)) }
      attr_accessor :team_id

      sig do
        params(
          limit: Integer,
          match_type: T.nilable(::Believe::MatchType::OrSymbol),
          result: T.nilable(::Believe::MatchResult::OrSymbol),
          skip: Integer,
          team_id: T.nilable(String),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Filter by match type
        match_type: nil,
        # Filter by result
        result: nil,
        # Number of items to skip (offset)
        skip: nil,
        # Filter by team (home or away)
        team_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            limit: Integer,
            match_type: T.nilable(::Believe::MatchType::OrSymbol),
            result: T.nilable(::Believe::MatchResult::OrSymbol),
            skip: Integer,
            team_id: T.nilable(String),
            request_options: ::Believe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
