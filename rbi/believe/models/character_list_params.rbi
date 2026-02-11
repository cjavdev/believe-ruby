# typed: strong

module Believe
  module Models
    class CharacterListParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Believe::CharacterListParams, Believe::Internal::AnyHash)
        end

      # Maximum number of items to return (max: 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Minimum optimism score
      sig { returns(T.nilable(Integer)) }
      attr_accessor :min_optimism

      # Filter by role
      sig { returns(T.nilable(Believe::CharacterRole::OrSymbol)) }
      attr_accessor :role

      # Number of items to skip (offset)
      sig { returns(T.nilable(Integer)) }
      attr_reader :skip

      sig { params(skip: Integer).void }
      attr_writer :skip

      # Filter by team ID
      sig { returns(T.nilable(String)) }
      attr_accessor :team_id

      sig do
        params(
          limit: Integer,
          min_optimism: T.nilable(Integer),
          role: T.nilable(Believe::CharacterRole::OrSymbol),
          skip: Integer,
          team_id: T.nilable(String),
          request_options: Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Minimum optimism score
        min_optimism: nil,
        # Filter by role
        role: nil,
        # Number of items to skip (offset)
        skip: nil,
        # Filter by team ID
        team_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            limit: Integer,
            min_optimism: T.nilable(Integer),
            role: T.nilable(Believe::CharacterRole::OrSymbol),
            skip: Integer,
            team_id: T.nilable(String),
            request_options: Believe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
