# typed: strong

module Believe
  module Models
    class TeamMemberListCoachesParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::TeamMemberListCoachesParams, ::Believe::Internal::AnyHash) }

      # Maximum number of items to return (max: 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Number of items to skip (offset)
      sig { returns(T.nilable(Integer)) }
      attr_reader :skip

      sig { params(skip: Integer).void }
      attr_writer :skip

      # Filter by specialty
      sig { returns(T.nilable(::Believe::CoachSpecialty::OrSymbol)) }
      attr_accessor :specialty

      # Filter by team ID
      sig { returns(T.nilable(String)) }
      attr_accessor :team_id

      sig do
        params(
          limit: Integer,
          skip: Integer,
          specialty: T.nilable(::Believe::CoachSpecialty::OrSymbol),
          team_id: T.nilable(String),
          request_options: ::Believe::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Maximum number of items to return (max: 100)
      limit: nil,
        # Number of items to skip (offset)
      skip: nil,
        # Filter by specialty
      specialty: nil,
        # Filter by team ID
      team_id: nil,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              limit: Integer,
              skip: Integer,
              specialty: T.nilable(::Believe::CoachSpecialty::OrSymbol),
              team_id: T.nilable(String),
              request_options: ::Believe::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
