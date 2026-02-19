# typed: strong

module Believe
  module Resources
    class Client
      class Ws
        # @api private
        sig { params(client: Believe::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
