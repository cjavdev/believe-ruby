# frozen_string_literal: true

module Believe
  module Internal
    # @generic Elem
    #
    # @example
    #   if skip_limit_page.has_next?
    #     skip_limit_page = skip_limit_page.next_page
    #   end
    #
    # @example
    #   skip_limit_page.auto_paging_each do |character|
    #     puts(character)
    #   end
    class SkipLimitPage
      include ::Believe::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :data

      # @return [Integer]
      attr_accessor :total

      # @return [Integer]
      attr_accessor :skip

      # @return [Boolean]
      def next_page?
        !data.to_a.empty? && (skip.to_i + data.to_a.size < total.to_i)
      end

      # @raise [::Believe::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = ::Believe::Internal::Util.deep_merge(@req, {query: {skip: skip.to_i + data.to_a.size}})
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.data&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [::Believe::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {data: Array => data}
          @data = data.map { ::Believe::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        @total = page_data[:total]
        @skip = page_data[:skip]
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = ::Believe::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)} total=#{total.inspect} skip=#{skip.inspect}>"
      end
    end
  end
end
