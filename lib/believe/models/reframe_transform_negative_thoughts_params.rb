# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Reframe#transform_negative_thoughts
    class ReframeTransformNegativeThoughtsParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute negative_thought
      #   The negative thought to reframe
      #
      #   @return [String]
      required :negative_thought, String

      # @!attribute recurring
      #   Is this a recurring thought?
      #
      #   @return [Boolean, nil]
      optional :recurring, Believe::Internal::Type::Boolean

      # @!method initialize(negative_thought:, recurring: nil, request_options: {})
      #   @param negative_thought [String] The negative thought to reframe
      #
      #   @param recurring [Boolean] Is this a recurring thought?
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
