# typed: strong

module Believe
  module Models
    class PepTalkRetrieveResponse < Believe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Believe::Models::PepTalkRetrieveResponse,
            Believe::Internal::AnyHash
          )
        end

      # Individual chunks of the pep talk
      sig { returns(T::Array[Believe::Models::PepTalkRetrieveResponse::Chunk]) }
      attr_accessor :chunks

      # The full pep talk text
      sig { returns(String) }
      attr_accessor :text

      # A complete pep talk response.
      sig do
        params(
          chunks:
            T::Array[Believe::Models::PepTalkRetrieveResponse::Chunk::OrHash],
          text: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Individual chunks of the pep talk
        chunks:,
        # The full pep talk text
        text:
      )
      end

      sig do
        override.returns(
          {
            chunks: T::Array[Believe::Models::PepTalkRetrieveResponse::Chunk],
            text: String
          }
        )
      end
      def to_hash
      end

      class Chunk < Believe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Believe::Models::PepTalkRetrieveResponse::Chunk,
              Believe::Internal::AnyHash
            )
          end

        # Chunk sequence number
        sig { returns(Integer) }
        attr_accessor :chunk_id

        # Is this the final chunk
        sig { returns(T::Boolean) }
        attr_accessor :is_final

        # The text of this chunk
        sig { returns(String) }
        attr_accessor :text

        # The emotional purpose of this chunk (e.g., greeting, acknowledgment, wisdom,
        # affirmation, encouragement)
        sig { returns(T.nilable(String)) }
        attr_accessor :emotional_beat

        # A chunk of a streaming pep talk from Ted.
        sig do
          params(
            chunk_id: Integer,
            is_final: T::Boolean,
            text: String,
            emotional_beat: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Chunk sequence number
          chunk_id:,
          # Is this the final chunk
          is_final:,
          # The text of this chunk
          text:,
          # The emotional purpose of this chunk (e.g., greeting, acknowledgment, wisdom,
          # affirmation, encouragement)
          emotional_beat: nil
        )
        end

        sig do
          override.returns(
            {
              chunk_id: Integer,
              is_final: T::Boolean,
              text: String,
              emotional_beat: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
