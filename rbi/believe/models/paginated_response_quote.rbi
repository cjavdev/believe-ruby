# typed: strong

module Believe
  module Models
    class PaginatedResponseQuote < Believe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Believe::PaginatedResponseQuote, Believe::Internal::AnyHash)
        end

      sig { returns(T::Array[Believe::Quote]) }
      attr_accessor :data

      sig { returns(Integer) }
      attr_accessor :limit

      sig { returns(Integer) }
      attr_accessor :skip

      sig { returns(Integer) }
      attr_accessor :total

      # Whether there are more items after this page.
      sig { returns(T::Boolean) }
      attr_accessor :has_more

      # Current page number (1-indexed, for display purposes).
      sig { returns(Integer) }
      attr_accessor :page

      # Total number of pages.
      sig { returns(Integer) }
      attr_accessor :pages

      sig do
        params(
          data: T::Array[Believe::Quote::OrHash],
          has_more: T::Boolean,
          limit: Integer,
          page: Integer,
          pages: Integer,
          skip: Integer,
          total: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        data:,
        # Whether there are more items after this page.
        has_more:,
        limit:,
        # Current page number (1-indexed, for display purposes).
        page:,
        # Total number of pages.
        pages:,
        skip:,
        total:
      )
      end

      sig do
        override.returns(
          {
            data: T::Array[Believe::Quote],
            has_more: T::Boolean,
            limit: Integer,
            page: Integer,
            pages: Integer,
            skip: Integer,
            total: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
