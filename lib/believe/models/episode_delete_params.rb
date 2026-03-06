# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Episodes#delete
    class EpisodeDeleteParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute episode_id
      #
      #   @return [String]
      required :episode_id, String

      # @!method initialize(episode_id:, request_options: {})
      #   @param episode_id [String]
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
