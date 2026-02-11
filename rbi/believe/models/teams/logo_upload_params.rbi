# typed: strong

module Believe
  module Models
    module Teams
      class LogoUploadParams < Believe::Internal::Type::BaseModel
        extend Believe::Internal::Type::RequestParameters::Converter
        include Believe::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Believe::Teams::LogoUploadParams, Believe::Internal::AnyHash)
          end

        # Logo image file
        sig { returns(Believe::Internal::FileInput) }
        attr_accessor :file

        sig do
          params(
            file: Believe::Internal::FileInput,
            request_options: Believe::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Logo image file
          file:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              file: Believe::Internal::FileInput,
              request_options: Believe::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
