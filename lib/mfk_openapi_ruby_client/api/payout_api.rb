=begin
#Money Forward Kessai API v2

#Money Forward Kessai REST API

The version of the OpenAPI document: 2.6.7
Contact: api.support@mfkessai.co.jp
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'cgi'

module MfkOpenapiRubyClient
  class PayoutApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # 振込取得
    # @param payout_id [String] 対象の振込ID。
    # @param [Hash] opts the optional parameters
    # @return [Payout]
    def get_payout(payout_id, opts = {})
      data, _status_code, _headers = get_payout_with_http_info(payout_id, opts)
      data
    end

    # 振込取得
    # @param payout_id [String] 対象の振込ID。
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payout, Integer, Hash)>] Payout data, response status code and response headers
    def get_payout_with_http_info(payout_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutApi.get_payout ...'
      end
      # verify the required parameter 'payout_id' is set
      if @api_client.config.client_side_validation && payout_id.nil?
        fail ArgumentError, "Missing the required parameter 'payout_id' when calling PayoutApi.get_payout"
      end
      # resource path
      local_var_path = '/payouts/{payout_id}'.sub('{' + 'payout_id' + '}', CGI.escape(payout_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Payout'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"PayoutApi.get_payout",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutApi#get_payout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 振込一覧取得
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :status 振込ステータスを指定します。該当するステータスの振込が返却されます。指定できる値は &#x60;in_progress&#x60;(振込手続中), &#x60;completed&#x60;(振込完了)の2種類のみです。
    # @option opts [Date] :payout_date_from 日付を指定します。指定した日付以降の振込予定日となっている振込を取得できます。指定された日付のものも含まれます。
    # @option opts [Date] :payout_date_to 日付を指定します。指定した日付以前の振込予定日となっている振込を取得できます。指定された日付のものも含まれます。
    # @option opts [String] :after 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [String] :before 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [Integer] :limit 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
    # @return [PayoutsList]
    def get_payouts_list(opts = {})
      data, _status_code, _headers = get_payouts_list_with_http_info(opts)
      data
    end

    # 振込一覧取得
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :status 振込ステータスを指定します。該当するステータスの振込が返却されます。指定できる値は &#x60;in_progress&#x60;(振込手続中), &#x60;completed&#x60;(振込完了)の2種類のみです。
    # @option opts [Date] :payout_date_from 日付を指定します。指定した日付以降の振込予定日となっている振込を取得できます。指定された日付のものも含まれます。
    # @option opts [Date] :payout_date_to 日付を指定します。指定した日付以前の振込予定日となっている振込を取得できます。指定された日付のものも含まれます。
    # @option opts [String] :after 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [String] :before 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [Integer] :limit 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
    # @return [Array<(PayoutsList, Integer, Hash)>] PayoutsList data, response status code and response headers
    def get_payouts_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutApi.get_payouts_list ...'
      end
      allowable_values = ["in_progress", "completed"]
      if @api_client.config.client_side_validation && opts[:'status'] && !opts[:'status'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"status\", must include one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 200
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PayoutApi.get_payouts_list, must be smaller than or equal to 200.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PayoutApi.get_payouts_list, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/payouts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'status'] = @api_client.build_collection_param(opts[:'status'], :csv) if !opts[:'status'].nil?
      query_params[:'payout_date_from'] = opts[:'payout_date_from'] if !opts[:'payout_date_from'].nil?
      query_params[:'payout_date_to'] = opts[:'payout_date_to'] if !opts[:'payout_date_to'].nil?
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PayoutsList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"PayoutApi.get_payouts_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutApi#get_payouts_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
