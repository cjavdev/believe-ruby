# frozen_string_literal: true

module Believe
  module Models
    module Teams
      # @see Believe::Resources::Teams::Logo#upload
      class LogoUploadParams < Believe::Internal::Type::BaseModel
        extend Believe::Internal::Type::RequestParameters::Converter
        include Believe::Internal::Type::RequestParameters

        # @!attribute file
        #   Logo image file
        #
        #   @return [Pathname, StringIO, IO, String, Believe::FilePart]
        required :file, Believe::Internal::Type::FileInput

        # @!method initialize(file:, request_options: {})
        #   @param file [Pathname, StringIO, IO, String, Believe::FilePart] Logo image file
        #
        #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
