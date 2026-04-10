# typed: strong

module Believe
  module Models
    class TicketSaleRetrieveParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::TicketSaleRetrieveParams, ::Believe::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :ticket_sale_id

      sig do
        params(ticket_sale_id: String, request_options: ::Believe::RequestOptions::OrHash)
          .returns(T.attached_class)
      end
      def self.new(ticket_sale_id:, request_options: {}); end

      sig { override.returns({ticket_sale_id: String, request_options: ::Believe::RequestOptions}) }
      def to_hash; end
    end
  end
end
