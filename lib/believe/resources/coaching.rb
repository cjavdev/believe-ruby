# frozen_string_literal: true

module Believe
  module Resources
    class Coaching
      # @return [Believe::Resources::Coaching::Principles]
      attr_reader :principles

      # @api private
      #
      # @param client [Believe::Client]
      def initialize(client:)
        @client = client
        @principles = Believe::Resources::Coaching::Principles.new(client: client)
      end
    end
  end
end
