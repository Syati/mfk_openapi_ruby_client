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
  class TransactionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # 取引の状態によってはキャンセルができない場合もあります。<a target=\"_blank\" href=\"https://support.mfkessai.co.jp/hc/ja/articles/900002235166-%E5%8F%96%E5%BC%95%E3%81%AE%E3%82%AD%E3%83%A3%E3%83%B3%E3%82%BB%E3%83%AB\">キャンセルについて</a>を参照してください。
    # 取引キャンセル
    # @param transaction_id [String] 対象の取引IDを指定してください。
    # @param [Hash] opts the optional parameters
    # @return [Transaction]
    def cancel_transaction(transaction_id, opts = {})
      data, _status_code, _headers = cancel_transaction_with_http_info(transaction_id, opts)
      data
    end

    # 取引の状態によってはキャンセルができない場合もあります。&lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://support.mfkessai.co.jp/hc/ja/articles/900002235166-%E5%8F%96%E5%BC%95%E3%81%AE%E3%82%AD%E3%83%A3%E3%83%B3%E3%82%BB%E3%83%AB\&quot;&gt;キャンセルについて&lt;/a&gt;を参照してください。
    # 取引キャンセル
    # @param transaction_id [String] 対象の取引IDを指定してください。
    # @param [Hash] opts the optional parameters
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def cancel_transaction_with_http_info(transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionApi.cancel_transaction ...'
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TransactionApi.cancel_transaction"
      end
      # resource path
      local_var_path = '/transactions/{transaction_id}'.sub('{' + 'transaction_id' + '}', CGI.escape(transaction_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Transaction'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"TransactionApi.cancel_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionApi#cancel_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 請求先を指定して取引を登録できます。最長で申請後2営業日以内に審査いたします。<br> Sandbox環境では動作テストのため、任意の審査結果を指定することができます。[審査結果の操作](#environment_magic_number)を参照してください。
    # 取引登録
    # @param payload [TransactionPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Transaction]
    def create_transaction(payload, opts = {})
      data, _status_code, _headers = create_transaction_with_http_info(payload, opts)
      data
    end

    # 請求先を指定して取引を登録できます。最長で申請後2営業日以内に審査いたします。&lt;br&gt; Sandbox環境では動作テストのため、任意の審査結果を指定することができます。[審査結果の操作](#environment_magic_number)を参照してください。
    # 取引登録
    # @param payload [TransactionPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def create_transaction_with_http_info(payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionApi.create_transaction ...'
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling TransactionApi.create_transaction"
      end
      # resource path
      local_var_path = '/transactions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payload)

      # return_type
      return_type = opts[:debug_return_type] || 'Transaction'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"TransactionApi.create_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionApi#create_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 取引取得
    # @param transaction_id [String] 対象の取引IDを指定してください。
    # @param [Hash] opts the optional parameters
    # @return [Transaction]
    def get_transaction(transaction_id, opts = {})
      data, _status_code, _headers = get_transaction_with_http_info(transaction_id, opts)
      data
    end

    # 取引取得
    # @param transaction_id [String] 対象の取引IDを指定してください。
    # @param [Hash] opts the optional parameters
    # @return [Array<(Transaction, Integer, Hash)>] Transaction data, response status code and response headers
    def get_transaction_with_http_info(transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionApi.get_transaction ...'
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TransactionApi.get_transaction"
      end
      # resource path
      local_var_path = '/transactions/{transaction_id}'.sub('{' + 'transaction_id' + '}', CGI.escape(transaction_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Transaction'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"TransactionApi.get_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionApi#get_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 取引一覧取得
    # @param [Hash] opts the optional parameters
    # @option opts [String] :number 任意の取引の &#x60;number&#x60;を指定します。該当する取引がある場合、その一件のみが返却されます。
    # @option opts [String] :customer_id 任意の顧客IDを指定します。指定した顧客に対する取引が返却されます。
    # @option opts [String] :customer_number 顧客番号を指定します。指定された顧客の取引を取得します。
    # @option opts [String] :billing_id 任意の請求IDを指定します。指定した請求に含まれる取引が返却されます。
    # @option opts [String] :status 取引のステータスを指定します。未審査(&#x60;unexamined&#x60;)、審査通過(&#x60;passed&#x60;)、審査否決(&#x60;rejected&#x60;)、キャンセル済み(&#x60;canceled&#x60;)のいずれかを指定してください。
    # @option opts [Boolean] :billing 請求対象であるかどうかを指定します。請求対象(&#x60;true&#x60;)、請求対象外(&#x60;false&#x60;)のいずれかを指定してください。 詳しくは[請求対象とは](https://support.mfkessai.co.jp/hc/ja/articles/900002241626)を参照してください。
    # @option opts [Date] :date_from 取引日が指定された日付以降の取引を取得します。指定された日付が取引日のものも含まれます。 RFC3339の&#x60;full-time&#x60;(2019-04-01)で指定してください。
    # @option opts [Date] :date_to 取引日が指定された日付以前の取引を取得します。指定された日付が取引日のものも含まれます。 RFC3339の&#x60;full-time&#x60;(2019-04-01&#x60;)で指定してください。
    # @option opts [Time] :created_at_from 指定された日時以降に作成された取引を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :created_at_to 指定された日時以前に作成された取引を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :canceled_at_from 指定された日時以降にキャンセルされた取引を取得します。指定された日時にキャンセルされたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :canceled_at_to 指定された日時以前にキャンセルされた取引を取得します。指定された日時にキャンセルされたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :accepted_at_from 指定された日時以降に債権譲受された取引を取得します。指定された日時に債権譲受されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :accepted_at_to 指定された日時以前に債権譲受された取引を取得します。指定された日時に債権譲受されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :billing_accepted_at_from 指定された日時以降に請求依頼を受領した取引を取得します。指定された日時に請求依頼を受領したものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :billing_accepted_at_to 指定された日時以前に請求依頼を受領した取引を取得します。指定された日時に請求依頼を受領したものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [String] :after 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [String] :before 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [Integer] :limit 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
    # @return [TransactionsList]
    def get_transactions_list(opts = {})
      data, _status_code, _headers = get_transactions_list_with_http_info(opts)
      data
    end

    # 取引一覧取得
    # @param [Hash] opts the optional parameters
    # @option opts [String] :number 任意の取引の &#x60;number&#x60;を指定します。該当する取引がある場合、その一件のみが返却されます。
    # @option opts [String] :customer_id 任意の顧客IDを指定します。指定した顧客に対する取引が返却されます。
    # @option opts [String] :customer_number 顧客番号を指定します。指定された顧客の取引を取得します。
    # @option opts [String] :billing_id 任意の請求IDを指定します。指定した請求に含まれる取引が返却されます。
    # @option opts [String] :status 取引のステータスを指定します。未審査(&#x60;unexamined&#x60;)、審査通過(&#x60;passed&#x60;)、審査否決(&#x60;rejected&#x60;)、キャンセル済み(&#x60;canceled&#x60;)のいずれかを指定してください。
    # @option opts [Boolean] :billing 請求対象であるかどうかを指定します。請求対象(&#x60;true&#x60;)、請求対象外(&#x60;false&#x60;)のいずれかを指定してください。 詳しくは[請求対象とは](https://support.mfkessai.co.jp/hc/ja/articles/900002241626)を参照してください。
    # @option opts [Date] :date_from 取引日が指定された日付以降の取引を取得します。指定された日付が取引日のものも含まれます。 RFC3339の&#x60;full-time&#x60;(2019-04-01)で指定してください。
    # @option opts [Date] :date_to 取引日が指定された日付以前の取引を取得します。指定された日付が取引日のものも含まれます。 RFC3339の&#x60;full-time&#x60;(2019-04-01&#x60;)で指定してください。
    # @option opts [Time] :created_at_from 指定された日時以降に作成された取引を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :created_at_to 指定された日時以前に作成された取引を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :canceled_at_from 指定された日時以降にキャンセルされた取引を取得します。指定された日時にキャンセルされたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :canceled_at_to 指定された日時以前にキャンセルされた取引を取得します。指定された日時にキャンセルされたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :accepted_at_from 指定された日時以降に債権譲受された取引を取得します。指定された日時に債権譲受されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :accepted_at_to 指定された日時以前に債権譲受された取引を取得します。指定された日時に債権譲受されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :billing_accepted_at_from 指定された日時以降に請求依頼を受領した取引を取得します。指定された日時に請求依頼を受領したものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :billing_accepted_at_to 指定された日時以前に請求依頼を受領した取引を取得します。指定された日時に請求依頼を受領したものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [String] :after 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [String] :before 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [Integer] :limit 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
    # @return [Array<(TransactionsList, Integer, Hash)>] TransactionsList data, response status code and response headers
    def get_transactions_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionApi.get_transactions_list ...'
      end
      if @api_client.config.client_side_validation && !opts[:'number'].nil? && opts[:'number'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"number"]" when calling TransactionApi.get_transactions_list, the character length must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'customer_number'].nil? && opts[:'customer_number'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"customer_number"]" when calling TransactionApi.get_transactions_list, the character length must be smaller than or equal to 100.'
      end

      allowable_values = ["unexamined", "passed", "rejected", "canceled"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 200
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionApi.get_transactions_list, must be smaller than or equal to 200.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling TransactionApi.get_transactions_list, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/transactions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?
      query_params[:'customer_id'] = opts[:'customer_id'] if !opts[:'customer_id'].nil?
      query_params[:'customer_number'] = opts[:'customer_number'] if !opts[:'customer_number'].nil?
      query_params[:'billing_id'] = opts[:'billing_id'] if !opts[:'billing_id'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'billing'] = opts[:'billing'] if !opts[:'billing'].nil?
      query_params[:'date_from'] = opts[:'date_from'] if !opts[:'date_from'].nil?
      query_params[:'date_to'] = opts[:'date_to'] if !opts[:'date_to'].nil?
      query_params[:'created_at_from'] = opts[:'created_at_from'] if !opts[:'created_at_from'].nil?
      query_params[:'created_at_to'] = opts[:'created_at_to'] if !opts[:'created_at_to'].nil?
      query_params[:'canceled_at_from'] = opts[:'canceled_at_from'] if !opts[:'canceled_at_from'].nil?
      query_params[:'canceled_at_to'] = opts[:'canceled_at_to'] if !opts[:'canceled_at_to'].nil?
      query_params[:'accepted_at_from'] = opts[:'accepted_at_from'] if !opts[:'accepted_at_from'].nil?
      query_params[:'accepted_at_to'] = opts[:'accepted_at_to'] if !opts[:'accepted_at_to'].nil?
      query_params[:'billing_accepted_at_from'] = opts[:'billing_accepted_at_from'] if !opts[:'billing_accepted_at_from'].nil?
      query_params[:'billing_accepted_at_to'] = opts[:'billing_accepted_at_to'] if !opts[:'billing_accepted_at_to'].nil?
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
      return_type = opts[:debug_return_type] || 'TransactionsList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"TransactionApi.get_transactions_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionApi#get_transactions_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
