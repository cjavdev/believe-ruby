# typed: strong

module Believe
  module Internal
    module Type
      # @api private
      module RequestParameters
        # Options to specify HTTP behaviour for this request.
        sig { returns(::Believe::RequestOptions) }
        attr_reader :request_options

        sig { params(request_options: ::Believe::RequestOptions::OrHash).void }
        attr_writer :request_options

        # @api private
        module Converter
          # @api private
          sig { params(params: T.anything).returns([T.anything, ::Believe::Internal::AnyHash]) }
          def dump_request(params); end
        end
      end
    end
  end
end
