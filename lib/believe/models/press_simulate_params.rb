# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Press#simulate
    class PressSimulateParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute question
      #   The press question to answer
      #
      #   @return [String]
      required :question, String

      # @!attribute hostile
      #   Is this a hostile question from Trent Crimm?
      #
      #   @return [Boolean, nil]
      optional :hostile, Believe::Internal::Type::Boolean

      # @!attribute topic
      #   Topic category
      #
      #   @return [String, nil]
      optional :topic, String, nil?: true

      # @!method initialize(question:, hostile: nil, topic: nil, request_options: {})
      #   @param question [String] The press question to answer
      #
      #   @param hostile [Boolean] Is this a hostile question from Trent Crimm?
      #
      #   @param topic [String, nil] Topic category
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
