# typed: strong

module Believe
  module Models
    class ReframeTransformNegativeThoughtsParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(::Believe::ReframeTransformNegativeThoughtsParams, ::Believe::Internal::AnyHash) }

      # The negative thought to reframe
      sig { returns(String) }
      attr_accessor :negative_thought

      # Is this a recurring thought?
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :recurring

      sig { params(recurring: T::Boolean).void }
      attr_writer :recurring

      sig do
        params(
          negative_thought: String,
          recurring: T::Boolean,
          request_options: ::Believe::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        # The negative thought to reframe
      negative_thought:,
        # Is this a recurring thought?
      recurring: nil,
        request_options: {}
      ); end

      sig do
        override
          .returns({negative_thought: String, recurring: T::Boolean, request_options: ::Believe::RequestOptions})
      end
      def to_hash; end
    end
  end
end
