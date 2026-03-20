# typed: strong

module Believe
  module Models
    class Biscuit < ::Believe::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(::Believe::Biscuit, ::Believe::Internal::AnyHash) }

      # Biscuit identifier
      sig { returns(String) }
      attr_accessor :id

      # Message that comes with the biscuit
      sig { returns(String) }
      attr_accessor :message

      # What this biscuit pairs well with
      sig { returns(String) }
      attr_accessor :pairs_well_with

      # A handwritten note from Ted
      sig { returns(String) }
      attr_accessor :ted_note

      # Type of biscuit
      sig { returns(::Believe::Biscuit::Type::TaggedSymbol) }
      attr_accessor :type

      # How warm and fresh (1-10)
      sig { returns(Integer) }
      attr_accessor :warmth_level

      # A biscuit from Ted.
      sig do
        params(
          id: String,
          message: String,
          pairs_well_with: String,
          ted_note: String,
          type: ::Believe::Biscuit::Type::OrSymbol,
          warmth_level: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Biscuit identifier
        id:,
        # Message that comes with the biscuit
        message:,
        # What this biscuit pairs well with
        pairs_well_with:,
        # A handwritten note from Ted
        ted_note:,
        # Type of biscuit
        type:,
        # How warm and fresh (1-10)
        warmth_level:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            message: String,
            pairs_well_with: String,
            ted_note: String,
            type: ::Believe::Biscuit::Type::TaggedSymbol,
            warmth_level: Integer
          }
        )
      end
      def to_hash
      end

      # Type of biscuit
      module Type
        extend ::Believe::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ::Believe::Biscuit::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLASSIC = T.let(:classic, ::Believe::Biscuit::Type::TaggedSymbol)
        SHORTBREAD = T.let(:shortbread, ::Believe::Biscuit::Type::TaggedSymbol)
        CHOCOLATE_CHIP =
          T.let(:chocolate_chip, ::Believe::Biscuit::Type::TaggedSymbol)
        OATMEAL_RAISIN =
          T.let(:oatmeal_raisin, ::Believe::Biscuit::Type::TaggedSymbol)
        SNICKERDOODLE =
          T.let(:snickerdoodle, ::Believe::Biscuit::Type::TaggedSymbol)
        LEMON_DRIZZLE =
          T.let(:lemon_drizzle, ::Believe::Biscuit::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[::Believe::Biscuit::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
