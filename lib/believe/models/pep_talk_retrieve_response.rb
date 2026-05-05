# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::PepTalk#retrieve
    class PepTalkRetrieveResponse < ::Believe::Internal::Type::BaseModel
      # @!attribute chunks
      #   Individual chunks of the pep talk
      #
      #   @return [Array<::Believe::Models::PepTalkRetrieveResponse::Chunk>]
      required :chunks,
               -> { ::Believe::Internal::Type::ArrayOf[::Believe::Models::PepTalkRetrieveResponse::Chunk] }

      # @!attribute text
      #   The full pep talk text
      #
      #   @return [String]
      required :text, String

      # @!method initialize(chunks:, text:)
      #   A complete pep talk response.
      #
      #   @param chunks [Array<::Believe::Models::PepTalkRetrieveResponse::Chunk>] Individual chunks of the pep talk
      #
      #   @param text [String] The full pep talk text

      class Chunk < ::Believe::Internal::Type::BaseModel
        # @!attribute chunk_id
        #   Chunk sequence number
        #
        #   @return [Integer]
        required :chunk_id, Integer

        # @!attribute is_final
        #   Is this the final chunk
        #
        #   @return [Boolean]
        required :is_final, ::Believe::Internal::Type::Boolean

        # @!attribute text
        #   The text of this chunk
        #
        #   @return [String]
        required :text, String

        # @!attribute emotional_beat
        #   The emotional purpose of this chunk (e.g., greeting, acknowledgment, wisdom,
        #   affirmation, encouragement)
        #
        #   @return [String, nil]
        optional :emotional_beat, String, nil?: true

        # @!method initialize(chunk_id:, is_final:, text:, emotional_beat: nil)
        #   Some parameter documentations has been truncated, see
        #   {::Believe::Models::PepTalkRetrieveResponse::Chunk} for more details.
        #
        #   A chunk of a streaming pep talk from Ted.
        #
        #   @param chunk_id [Integer] Chunk sequence number
        #
        #   @param is_final [Boolean] Is this the final chunk
        #
        #   @param text [String] The text of this chunk
        #
        #   @param emotional_beat [String, nil] The emotional purpose of this chunk (e.g., greeting, acknowledgment, wisdom, aff
      end
    end
  end
end
