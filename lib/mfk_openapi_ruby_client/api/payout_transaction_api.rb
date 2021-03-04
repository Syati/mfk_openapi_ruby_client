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
  class PayoutTransactionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # 債権取得
    # @param payout_transaction_id [String] 取得したい債権のID。
    # @param [Hash] opts the optional parameters
    # @return [PayoutTransaction]
    def get_payout_transaction(payout_transaction_id, opts = {})
      data, _status_code, _headers = get_payout_transaction_with_http_info(payout_transaction_id, opts)
      data
    end

    # 債権取得
    # @param payout_transaction_id [String] 取得したい債権のID。
    # @param [Hash] opts the optional parameters
    # @return [Array<(PayoutTransaction, Integer, Hash)>] PayoutTransaction data, response status code and response headers
    def get_payout_transaction_with_http_info(payout_transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutTransactionApi.get_payout_transaction ...'
      end
      # verify the required parameter 'payout_transaction_id' is set
      if @api_client.config.client_side_validation && payout_transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'payout_transaction_id' when calling PayoutTransactionApi.get_payout_transaction"
      end
      # resource path
      local_var_path = '/payout_transactions/{payout_transaction_id}'.sub('{' + 'payout_transaction_id' + '}', CGI.escape(payout_transaction_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PayoutTransaction'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"PayoutTransactionApi.get_payout_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutTransactionApi#get_payout_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 債権一覧取得
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payout_id 任意の振込IDを指定します。指定した振込に含まれる債権が返却されます。
    # @option opts [String] :after 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [String] :before 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [Integer] :limit 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
    # @return [PayoutTransactionsList]
    def get_payout_transactions_list(opts = {})
      data, _status_code, _headers = get_payout_transactions_list_with_http_info(opts)
      data
    end

    # 債権一覧取得
    # @param [Hash] opts the optional parameters
    # @option opts [String] :payout_id 任意の振込IDを指定します。指定した振込に含まれる債権が返却されます。
    # @option opts [String] :after 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [String] :before 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [Integer] :limit 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
    # @return [Array<(PayoutTransactionsList, Integer, Hash)>] PayoutTransactionsList data, response status code and response headers
    def get_payout_transactions_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutTransactionApi.get_payout_transactions_list ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 200
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PayoutTransactionApi.get_payout_transactions_list, must be smaller than or equal to 200.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PayoutTransactionApi.get_payout_transactions_list, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/payout_transactions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'payout_id'] = opts[:'payout_id'] if !opts[:'payout_id'].nil?
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
      return_type = opts[:debug_return_type] || 'PayoutTransactionsList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"PayoutTransactionApi.get_payout_transactions_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutTransactionApi#get_payout_transactions_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end