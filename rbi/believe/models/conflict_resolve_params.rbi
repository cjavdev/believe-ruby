# typed: strong

module Believe
  module Models
    class ConflictResolveParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::ConflictResolveParams, ::Believe::Internal::AnyHash) }

      # Type of conflict
      sig { returns(::Believe::ConflictResolveParams::ConflictType::OrSymbol) }
      attr_accessor :conflict_type

      # Describe the conflict
      sig { returns(String) }
      attr_accessor :description

      # Who is involved in the conflict
      sig { returns(T::Array[String]) }
      attr_accessor :parties_involved

      # What you've already tried
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :attempts_made

      sig do
        params(
          conflict_type: ::Believe::ConflictResolveParams::ConflictType::OrSymbol,
          description: String,
          parties_involved: T::Array[String],
          attempts_made: T.nilable(T::Array[String]),
          request_options: ::Believe::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Type of conflict
      conflict_type:,
        # Describe the conflict
      description:,
        # Who is involved in the conflict
      parties_involved:,
        # What you've already tried
      attempts_made: nil,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              conflict_type: ::Believe::ConflictResolveParams::ConflictType::OrSymbol,
              description: String,
              parties_involved: T::Array[String],
              attempts_made: T.nilable(T::Array[String]),
              request_options: ::Believe::RequestOptions
            }
          )
      end
      def to_hash; end

      # Type of conflict
      module ConflictType
        extend ::Believe::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ::Believe::ConflictResolveParams::ConflictType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INTERPERSONAL = T.let(:interpersonal, ::Believe::ConflictResolveParams::ConflictType::TaggedSymbol)
        TEAM_DYNAMICS = T.let(:team_dynamics, ::Believe::ConflictResolveParams::ConflictType::TaggedSymbol)
        LEADERSHIP = T.let(:leadership, ::Believe::ConflictResolveParams::ConflictType::TaggedSymbol)
        EGO = T.let(:ego, ::Believe::ConflictResolveParams::ConflictType::TaggedSymbol)
        MISCOMMUNICATION = T.let(:miscommunication, ::Believe::ConflictResolveParams::ConflictType::TaggedSymbol)
        COMPETITION = T.let(:competition, ::Believe::ConflictResolveParams::ConflictType::TaggedSymbol)

        sig { override.returns(T::Array[::Believe::ConflictResolveParams::ConflictType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
