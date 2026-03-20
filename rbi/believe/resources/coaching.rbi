# typed: strong

module Believe
  module Resources
    class Coaching
      # Interactive endpoints for motivation and guidance
      sig { returns(::Believe::Resources::Coaching::Principles) }
      attr_reader :principles

      # @api private
      sig { params(client: ::Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
