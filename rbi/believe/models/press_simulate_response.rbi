# typed: strong

module Believe
  module Models
    class PressSimulateResponse < ::Believe::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(::Believe::Models::PressSimulateResponse, ::Believe::Internal::AnyHash) }

      # The actual wisdom beneath the humor
      sig { returns(String) }
      attr_accessor :actual_wisdom

      # How Ted would dodge a follow-up
      sig { returns(String) }
      attr_accessor :follow_up_dodge

      # How reporters would react
      sig { returns(String) }
      attr_accessor :reporter_reaction

      # Ted's press conference answer
      sig { returns(String) }
      attr_accessor :response

      # Humorous deflection if appropriate
      sig { returns(T.nilable(String)) }
      attr_accessor :deflection_humor

      # Ted's press conference response.
      sig do
        params(
          actual_wisdom: String,
          follow_up_dodge: String,
          reporter_reaction: String,
          response: String,
          deflection_humor: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # The actual wisdom beneath the humor
      actual_wisdom:,
        # How Ted would dodge a follow-up
      follow_up_dodge:,
        # How reporters would react
      reporter_reaction:,
        # Ted's press conference answer
      response:,
        # Humorous deflection if appropriate
      deflection_humor: nil
      ); end

      sig do
        override
          .returns(
            {
              actual_wisdom: String,
              follow_up_dodge: String,
              reporter_reaction: String,
              response: String,
              deflection_humor: T.nilable(String)
            }
          )
      end
      def to_hash; end
    end
  end
end
