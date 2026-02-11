# frozen_string_literal: true

module Believe
  module Models
    module Matches
      # @see Believe::Resources::Matches::Commentary#stream
      class CommentaryStreamParams < Believe::Internal::Type::BaseModel
        extend Believe::Internal::Type::RequestParameters::Converter
        include Believe::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
