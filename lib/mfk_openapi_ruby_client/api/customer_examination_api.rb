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
  class CustomerExaminationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # 顧客を指定して与信枠審査を申請することができます。最長で申請後2営業日以内に審査いたします。<br> 自動与信枠審査をご利用の場合、こちらで増枠した金額は今後の与信枠付与に継続して利用されます。また、対象顧客のアラートは解消されます。<br> Sandbox環境では動作テストのため、任意の審査結果を指定することができます。[審査結果の操作](#environment_magic_number)を参照してください。
    # 与信枠審査申請
    # @param payload [CustomerExaminationPayload] 与信枠審査申請情報です。
    # @param [Hash] opts the optional parameters
    # @return [CustomerExamination]
    def create_customer_examination(payload, opts = {})
      data, _status_code, _headers = create_customer_examination_with_http_info(payload, opts)
      data
    end

    # 顧客を指定して与信枠審査を申請することができます。最長で申請後2営業日以内に審査いたします。&lt;br&gt; 自動与信枠審査をご利用の場合、こちらで増枠した金額は今後の与信枠付与に継続して利用されます。また、対象顧客のアラートは解消されます。&lt;br&gt; Sandbox環境では動作テストのため、任意の審査結果を指定することができます。[審査結果の操作](#environment_magic_number)を参照してください。
    # 与信枠審査申請
    # @param payload [CustomerExaminationPayload] 与信枠審査申請情報です。
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerExamination, Integer, Hash)>] CustomerExamination data, response status code and response headers
    def create_customer_examination_with_http_info(payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerExaminationApi.create_customer_examination ...'
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling CustomerExaminationApi.create_customer_examination"
      end
      # resource path
      local_var_path = '/customer_examinations'

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
      return_type = opts[:debug_return_type] || 'CustomerExamination'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"CustomerExaminationApi.create_customer_examination",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerExaminationApi#create_customer_examination\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 与信枠審査IDを指定して対象与信枠審査１件を取得することができます。
    # 与信枠審査取得
    # @param customer_examination_id [String] 対象の与信枠審査IDを指定してください。
    # @param [Hash] opts the optional parameters
    # @return [CustomerExamination]
    def get_customer_examination(customer_examination_id, opts = {})
      data, _status_code, _headers = get_customer_examination_with_http_info(customer_examination_id, opts)
      data
    end

    # 与信枠審査IDを指定して対象与信枠審査１件を取得することができます。
    # 与信枠審査取得
    # @param customer_examination_id [String] 対象の与信枠審査IDを指定してください。
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomerExamination, Integer, Hash)>] CustomerExamination data, response status code and response headers
    def get_customer_examination_with_http_info(customer_examination_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerExaminationApi.get_customer_examination ...'
      end
      # verify the required parameter 'customer_examination_id' is set
      if @api_client.config.client_side_validation && customer_examination_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_examination_id' when calling CustomerExaminationApi.get_customer_examination"
      end
      # resource path
      local_var_path = '/customer_examinations/{customer_examination_id}'.sub('{' + 'customer_examination_id' + '}', CGI.escape(customer_examination_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CustomerExamination'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"CustomerExaminationApi.get_customer_examination",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerExaminationApi#get_customer_examination\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 与信枠審査の一覧を取得します。顧客IDやステータスで絞り込んで取得することもできます。
    # 与信枠審査一覧取得
    # @param [Hash] opts the optional parameters
    # @option opts [String] :customer_id 顧客IDを指定します。指定された顧客に対する与信枠審査を取得します。
    # @option opts [String] :customer_number 顧客番号を指定します。
    # @option opts [String] :status 与信枠審査のステータスを指定します。未審査(&#x60;unexamined&#x60;)、審査通過(&#x60;passed&#x60;)、審査否決(&#x60;rejected&#x60;)のいずれかを指定してください。
    # @option opts [Time] :created_at_from 指定された日時以降に作成された与信枠審査を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :created_at_to 指定された日時以前に作成された与信枠審査を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [String] :after 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [String] :before 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [Integer] :limit 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
    # @return [CustomerExaminationsList]
    def get_customer_examinations_list(opts = {})
      data, _status_code, _headers = get_customer_examinations_list_with_http_info(opts)
      data
    end

    # 与信枠審査の一覧を取得します。顧客IDやステータスで絞り込んで取得することもできます。
    # 与信枠審査一覧取得
    # @param [Hash] opts the optional parameters
    # @option opts [String] :customer_id 顧客IDを指定します。指定された顧客に対する与信枠審査を取得します。
    # @option opts [String] :customer_number 顧客番号を指定します。
    # @option opts [String] :status 与信枠審査のステータスを指定します。未審査(&#x60;unexamined&#x60;)、審査通過(&#x60;passed&#x60;)、審査否決(&#x60;rejected&#x60;)のいずれかを指定してください。
    # @option opts [Time] :created_at_from 指定された日時以降に作成された与信枠審査を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [Time] :created_at_to 指定された日時以前に作成された与信枠審査を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
    # @option opts [String] :after 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [String] :before 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。
    # @option opts [Integer] :limit 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
    # @return [Array<(CustomerExaminationsList, Integer, Hash)>] CustomerExaminationsList data, response status code and response headers
    def get_customer_examinations_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerExaminationApi.get_customer_examinations_list ...'
      end
      if @api_client.config.client_side_validation && !opts[:'customer_number'].nil? && opts[:'customer_number'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"customer_number"]" when calling CustomerExaminationApi.get_customer_examinations_list, the character length must be smaller than or equal to 100.'
      end

      allowable_values = ["passed", "rejected", "unexamined"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 200
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CustomerExaminationApi.get_customer_examinations_list, must be smaller than or equal to 200.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CustomerExaminationApi.get_customer_examinations_list, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/customer_examinations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'customer_id'] = opts[:'customer_id'] if !opts[:'customer_id'].nil?
      query_params[:'customer_number'] = opts[:'customer_number'] if !opts[:'customer_number'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'created_at_from'] = opts[:'created_at_from'] if !opts[:'created_at_from'].nil?
      query_params[:'created_at_to'] = opts[:'created_at_to'] if !opts[:'created_at_to'].nil?
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
      return_type = opts[:debug_return_type] || 'CustomerExaminationsList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apikey']

      new_options = opts.merge(
        :operation => :"CustomerExaminationApi.get_customer_examinations_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerExaminationApi#get_customer_examinations_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end