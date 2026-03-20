# typed: strong

module Believe
  module Models
    class PressSimulateParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(::Believe::PressSimulateParams, ::Believe::Internal::AnyHash)
        end

      # The press question to answer
      sig { returns(String) }
      attr_accessor :question

      # Is this a hostile question from Trent Crimm?
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :hostile

      sig { params(hostile: T::Boolean).void }
      attr_writer :hostile

      # Topic category
      sig { returns(T.nilable(String)) }
      attr_accessor :topic

      sig do
        params(
          question: String,
          hostile: T::Boolean,
          topic: T.nilable(String),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The press question to answer
        question:,
        # Is this a hostile question from Trent Crimm?
        hostile: nil,
        # Topic category
        topic: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            question: String,
            hostile: T::Boolean,
            topic: T.nilable(String),
            request_options: ::Believe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
