# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::Matches#get_lesson
    class MatchGetLessonParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      # @!attribute match_id
      #
      #   @return [String]
      required :match_id, String

      # @!method initialize(match_id:, request_options: {})
      #   @param match_id [String]
      #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
