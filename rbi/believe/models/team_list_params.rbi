# typed: strong

module Believe
  module Models
    class TeamListParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Believe::TeamListParams, Believe::Internal::AnyHash)
        end

      # Filter by league
      sig { returns(T.nilable(Believe::League::OrSymbol)) }
      attr_accessor :league

      # Maximum number of items to return (max: 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Minimum culture score
      sig { returns(T.nilable(Integer)) }
      attr_accessor :min_culture_score

      # Number of items to skip (offset)
      sig { returns(T.nilable(Integer)) }
      attr_reader :skip

      sig { params(skip: Integer).void }
      attr_writer :skip

      sig do
        params(
          league: T.nilable(Believe::League::OrSymbol),
          limit: Integer,
          min_culture_score: T.nilable(Integer),
          skip: Integer,
          request_options: Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by league
        league: nil,
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Minimum culture score
        min_culture_score: nil,
        # Number of items to skip (offset)
        skip: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            league: T.nilable(Believe::League::OrSymbol),
            limit: Integer,
            min_culture_score: T.nilable(Integer),
            skip: Integer,
            request_options: Believe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
