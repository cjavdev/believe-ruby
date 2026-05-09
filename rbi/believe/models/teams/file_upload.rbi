# typed: strong

module Believe
  module Models
    module Teams
      class FileUpload < ::Believe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(::Believe::Teams::FileUpload, ::Believe::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :checksum_sha256

        sig { returns(String) }
        attr_accessor :content_type

        sig { returns(String) }
        attr_accessor :file_id

        sig { returns(String) }
        attr_accessor :filename

        sig { returns(Integer) }
        attr_accessor :size_bytes

        sig { returns(Time) }
        attr_accessor :uploaded_at

        # Response model for file uploads.
        sig do
          params(
            checksum_sha256: String,
            content_type: String,
            file_id: String,
            filename: String,
            size_bytes: Integer,
            uploaded_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          checksum_sha256:,
          content_type:,
          file_id:,
          filename:,
          size_bytes:,
          uploaded_at:
        )
        end

        sig do
          override.returns(
            {
              checksum_sha256: String,
              content_type: String,
              file_id: String,
              filename: String,
              size_bytes: Integer,
              uploaded_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
