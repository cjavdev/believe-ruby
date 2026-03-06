# typed: strong

module Believe
  module Models
    module Matches
      class CommentaryStreamParams < Believe::Internal::Type::BaseModel
        extend Believe::Internal::Type::RequestParameters::Converter
        include Believe::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Believe::Matches::CommentaryStreamParams,
              Believe::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :match_id

        sig do
          params(
            match_id: String,
            request_options: Believe::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(match_id:, request_options: {})
        end

        sig do
          override.returns(
            { match_id: String, request_options: Believe::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
