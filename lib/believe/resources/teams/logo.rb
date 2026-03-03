# frozen_string_literal: true

module Believe
  module Resources
    class Teams
      # Operations related to football teams
      class Logo
        # Delete a team's logo.
        #
        # @overload delete(file_id, team_id:, request_options: {})
        #
        # @param file_id [String]
        # @param team_id [String]
        # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Believe::Models::Teams::LogoDeleteParams
        def delete(file_id, params)
          parsed, options = Believe::Teams::LogoDeleteParams.dump_request(params)
          team_id =
            parsed.delete(:team_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["teams/%1$s/logo/%2$s", team_id, file_id],
            model: NilClass,
            options: options
          )
        end

        # Download a team's logo by file ID.
        #
        # @overload download(file_id, team_id:, request_options: {})
        #
        # @param file_id [String]
        # @param team_id [String]
        # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Believe::Models::Teams::LogoDownloadParams
        def download(file_id, params)
          parsed, options = Believe::Teams::LogoDownloadParams.dump_request(params)
          team_id =
            parsed.delete(:team_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["teams/%1$s/logo/%2$s", team_id, file_id],
            model: Believe::Internal::Type::Unknown,
            options: options
          )
        end

        # Upload a logo image for a team. Accepts image files (jpg, png, gif, webp).
        #
        # @overload upload(team_id, file:, request_options: {})
        #
        # @param team_id [String]
        #
        # @param file [Pathname, StringIO, IO, String, Believe::FilePart] Logo image file
        #
        # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Believe::Models::Teams::FileUpload]
        #
        # @see Believe::Models::Teams::LogoUploadParams
        def upload(team_id, params)
          parsed, options = Believe::Teams::LogoUploadParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["teams/%1$s/logo", team_id],
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: Believe::Teams::FileUpload,
            options: options
          )
        end

        # @api private
        #
        # @param client [Believe::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
