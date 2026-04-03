# typed: strong

module Believe
  module Resources
    class Health
      # Check if the API is running and healthy.
      sig { params(request_options: ::Believe::RequestOptions::OrHash).returns(T.anything) }
      def check(request_options: {}); end

      # @api private
      sig { params(client: ::Believe::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
