# typed: strong

module Believe
  module Models
    class BelieveSubmitParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::BelieveSubmitParams, ::Believe::Internal::AnyHash) }

      # Describe your situation
      sig { returns(String) }
      attr_accessor :situation

      # Type of situation
      sig { returns(::Believe::BelieveSubmitParams::SituationType::OrSymbol) }
      attr_accessor :situation_type

      # Additional context
      sig { returns(T.nilable(String)) }
      attr_accessor :context

      # How intense is the response needed (1=gentle, 10=full Ted)
      sig { returns(T.nilable(Integer)) }
      attr_reader :intensity

      sig { params(intensity: Integer).void }
      attr_writer :intensity

      sig do
        params(
          situation: String,
          situation_type: ::Believe::BelieveSubmitParams::SituationType::OrSymbol,
          context: T.nilable(String),
          intensity: Integer,
          request_options: ::Believe::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Describe your situation
      situation:,
        # Type of situation
      situation_type:,
        # Additional context
      context: nil,
        # How intense is the response needed (1=gentle, 10=full Ted)
      intensity: nil,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              situation: String,
              situation_type: ::Believe::BelieveSubmitParams::SituationType::OrSymbol,
              context: T.nilable(String),
              intensity: Integer,
              request_options: ::Believe::RequestOptions
            }
          )
      end
      def to_hash; end

      # Type of situation
      module SituationType
        extend ::Believe::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ::Believe::BelieveSubmitParams::SituationType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WORK_CHALLENGE = T.let(:work_challenge, ::Believe::BelieveSubmitParams::SituationType::TaggedSymbol)
        PERSONAL_SETBACK = T.let(:personal_setback, ::Believe::BelieveSubmitParams::SituationType::TaggedSymbol)
        TEAM_CONFLICT = T.let(:team_conflict, ::Believe::BelieveSubmitParams::SituationType::TaggedSymbol)
        SELF_DOUBT = T.let(:self_doubt, ::Believe::BelieveSubmitParams::SituationType::TaggedSymbol)
        BIG_DECISION = T.let(:big_decision, ::Believe::BelieveSubmitParams::SituationType::TaggedSymbol)
        FAILURE = T.let(:failure, ::Believe::BelieveSubmitParams::SituationType::TaggedSymbol)
        NEW_BEGINNING = T.let(:new_beginning, ::Believe::BelieveSubmitParams::SituationType::TaggedSymbol)
        RELATIONSHIP = T.let(:relationship, ::Believe::BelieveSubmitParams::SituationType::TaggedSymbol)

        sig { override.returns(T::Array[::Believe::BelieveSubmitParams::SituationType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
