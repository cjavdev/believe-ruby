# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Biscuits#retrieve
    class Biscuit < Believe::Internal::Type::BaseModel
      # @!attribute id
      #   Biscuit identifier
      #
      #   @return [String]
      required :id, String

      # @!attribute message
      #   Message that comes with the biscuit
      #
      #   @return [String]
      required :message, String

      # @!attribute pairs_well_with
      #   What this biscuit pairs well with
      #
      #   @return [String]
      required :pairs_well_with, String

      # @!attribute ted_note
      #   A handwritten note from Ted
      #
      #   @return [String]
      required :ted_note, String

      # @!attribute type
      #   Type of biscuit
      #
      #   @return [Symbol, Believe::Models::Biscuit::Type]
      required :type, enum: -> { Believe::Biscuit::Type }

      # @!attribute warmth_level
      #   How warm and fresh (1-10)
      #
      #   @return [Integer]
      required :warmth_level, Integer

      # @!method initialize(id:, message:, pairs_well_with:, ted_note:, type:, warmth_level:)
      #   A biscuit from Ted.
      #
      #   @param id [String] Biscuit identifier
      #
      #   @param message [String] Message that comes with the biscuit
      #
      #   @param pairs_well_with [String] What this biscuit pairs well with
      #
      #   @param ted_note [String] A handwritten note from Ted
      #
      #   @param type [Symbol, Believe::Models::Biscuit::Type] Type of biscuit
      #
      #   @param warmth_level [Integer] How warm and fresh (1-10)

      # Type of biscuit
      #
      # @see Believe::Models::Biscuit#type
      module Type
        extend Believe::Internal::Type::Enum

        CLASSIC = :classic
        SHORTBREAD = :shortbread
        CHOCOLATE_CHIP = :chocolate_chip
        OATMEAL_RAISIN = :oatmeal_raisin
        SNICKERDOODLE = :snickerdoodle
        LEMON_DRIZZLE = :lemon_drizzle

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
