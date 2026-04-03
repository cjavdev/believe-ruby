# frozen_string_literal: true

module Believe
  module Models
    module Coaching
      # @see ::Believe::Resources::Coaching::Principles#retrieve
      class CoachingPrinciple < ::Believe::Internal::Type::BaseModel
        # @!attribute id
        #   Principle identifier
        #
        #   @return [String]
        required :id, String

        # @!attribute application
        #   How to apply this principle
        #
        #   @return [String]
        required :application, String

        # @!attribute example_from_show
        #   Example from the show
        #
        #   @return [String]
        required :example_from_show, String

        # @!attribute explanation
        #   What this principle means
        #
        #   @return [String]
        required :explanation, String

        # @!attribute principle
        #   The coaching principle
        #
        #   @return [String]
        required :principle, String

        # @!attribute ted_quote
        #   Related Ted quote
        #
        #   @return [String]
        required :ted_quote, String

        # @!method initialize(id:, application:, example_from_show:, explanation:, principle:, ted_quote:)
        #   A Ted Lasso coaching principle.
        #
        #   @param id [String] Principle identifier
        #
        #   @param application [String] How to apply this principle
        #
        #   @param example_from_show [String] Example from the show
        #
        #   @param explanation [String] What this principle means
        #
        #   @param principle [String] The coaching principle
        #
        #   @param ted_quote [String] Related Ted quote
      end
    end

    CoachingPrinciple = Coaching::CoachingPrinciple
  end
end
