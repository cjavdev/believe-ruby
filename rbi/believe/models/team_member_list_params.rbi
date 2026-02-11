# typed: strong

module Believe
  module Models
    class TeamMemberListParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Believe::TeamMemberListParams, Believe::Internal::AnyHash)
        end

      # Maximum number of items to return (max: 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Filter by member type
      sig do
        returns(T.nilable(Believe::TeamMemberListParams::MemberType::OrSymbol))
      end
      attr_accessor :member_type

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
          member_type:
            T.nilable(Believe::TeamMemberListParams::MemberType::OrSymbol),
          skip: Integer,
          team_id: T.nilable(String),
          request_options: Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Filter by member type
        member_type: nil,
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
            member_type:
              T.nilable(Believe::TeamMemberListParams::MemberType::OrSymbol),
            skip: Integer,
            team_id: T.nilable(String),
            request_options: Believe::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by member type
      module MemberType
        extend Believe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Believe::TeamMemberListParams::MemberType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLAYER =
          T.let(
            :player,
            Believe::TeamMemberListParams::MemberType::TaggedSymbol
          )
        COACH =
          T.let(:coach, Believe::TeamMemberListParams::MemberType::TaggedSymbol)
        MEDICAL_STAFF =
          T.let(
            :medical_staff,
            Believe::TeamMemberListParams::MemberType::TaggedSymbol
          )
        EQUIPMENT_MANAGER =
          T.let(
            :equipment_manager,
            Believe::TeamMemberListParams::MemberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Believe::TeamMemberListParams::MemberType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
