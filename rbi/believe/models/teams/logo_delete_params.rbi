# typed: strong

module Believe
  module Models
    module Teams
      class LogoDeleteParams < ::Believe::Internal::Type::BaseModel
        extend ::Believe::Internal::Type::RequestParameters::Converter
        include ::Believe::Internal::Type::RequestParameters

        OrHash = T.type_alias { T.any(::Believe::Teams::LogoDeleteParams, ::Believe::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :team_id

        sig { returns(String) }
        attr_accessor :file_id

        sig do
          params(team_id: String, file_id: String, request_options: ::Believe::RequestOptions::OrHash)
            .returns(T.attached_class)
        end
        def self.new(team_id:, file_id:, request_options: {}); end

        sig { override.returns({team_id: String, file_id: String, request_options: ::Believe::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
