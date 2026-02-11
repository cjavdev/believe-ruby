# frozen_string_literal: true

module Believe
  module Models
    module Teams
      # @see Believe::Resources::Teams::Logo#upload
      class FileUpload < Believe::Internal::Type::BaseModel
        # @!attribute checksum_sha256
        #
        #   @return [String]
        required :checksum_sha256, String

        # @!attribute content_type
        #
        #   @return [String]
        required :content_type, String

        # @!attribute file_id
        #
        #   @return [String]
        required :file_id, String

        # @!attribute filename
        #
        #   @return [String]
        required :filename, String

        # @!attribute size_bytes
        #
        #   @return [Integer]
        required :size_bytes, Integer

        # @!attribute uploaded_at
        #
        #   @return [Time]
        required :uploaded_at, Time

        # @!method initialize(checksum_sha256:, content_type:, file_id:, filename:, size_bytes:, uploaded_at:)
        #   Response model for file uploads.
        #
        #   @param checksum_sha256 [String]
        #   @param content_type [String]
        #   @param file_id [String]
        #   @param filename [String]
        #   @param size_bytes [Integer]
        #   @param uploaded_at [Time]
      end
    end
  end
end
