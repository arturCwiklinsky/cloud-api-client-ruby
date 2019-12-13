=begin
#BitbarCloud API

#BitbarCloud API.

OpenAPI spec version: 2.87.0
Contact: support@bitbar.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'uri'

module BitbarCloudApiClient
  class UsageAndStatisticsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get device usage statistics.
    # @param user_id userId
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter filter parameter contains list of fields used for filter query result &lt;br&gt; examples: &lt;br&gt; filter&#x3D;displayname_eq_value&lt;br&gt;filter&#x3D;faileddevicesessions_eq_1&lt;br&gt;filter&#x3D;totaldevicesessions_eq_1&lt;br&gt;filter&#x3D;ostype_eq_ios&lt;br&gt;filter&#x3D;devicesession.starttime_eq_1576134485690&lt;br&gt;filter&#x3D;creditsprice_eq_1&lt;br&gt;filter&#x3D;devicesession.userid_eq_1&lt;br&gt;filter&#x3D;id_eq_1
    # @option opts [Integer] :limit limit parameter define page size (default to 20)
    # @option opts [Integer] :offset offset parameter define page number (default to 0)
    # @option opts [String] :sort sort parameter contains list of fields used for sort query result &lt;br&gt; examples: &lt;br&gt; sort&#x3D;displayName_a&lt;br&gt;sort&#x3D;failedDeviceSessions_a&lt;br&gt;sort&#x3D;totalDeviceSessions_a&lt;br&gt;sort&#x3D;osType_a&lt;br&gt;sort&#x3D;deviceSession.startTime_a&lt;br&gt;sort&#x3D;creditsPrice_a&lt;br&gt;sort&#x3D;deviceSession.userId_a&lt;br&gt;sort&#x3D;id_a
    # @option opts [Integer] :start_time startTime
    # @option opts [BOOLEAN] :with_additional_users withAdditionalUsers (default to false)
    # @return [APIListOfAPIDeviceUsage]
    def get_user_device_usage_statistics_using_get(user_id, opts = {})
      data, _status_code, _headers = get_user_device_usage_statistics_using_get_with_http_info(user_id, opts)
      data
    end

    # Get device usage statistics.
    # @param user_id userId
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter filter parameter contains list of fields used for filter query result &lt;br&gt; examples: &lt;br&gt; filter&#x3D;displayname_eq_value&lt;br&gt;filter&#x3D;faileddevicesessions_eq_1&lt;br&gt;filter&#x3D;totaldevicesessions_eq_1&lt;br&gt;filter&#x3D;ostype_eq_ios&lt;br&gt;filter&#x3D;devicesession.starttime_eq_1576134485690&lt;br&gt;filter&#x3D;creditsprice_eq_1&lt;br&gt;filter&#x3D;devicesession.userid_eq_1&lt;br&gt;filter&#x3D;id_eq_1
    # @option opts [Integer] :limit limit parameter define page size
    # @option opts [Integer] :offset offset parameter define page number
    # @option opts [String] :sort sort parameter contains list of fields used for sort query result &lt;br&gt; examples: &lt;br&gt; sort&#x3D;displayName_a&lt;br&gt;sort&#x3D;failedDeviceSessions_a&lt;br&gt;sort&#x3D;totalDeviceSessions_a&lt;br&gt;sort&#x3D;osType_a&lt;br&gt;sort&#x3D;deviceSession.startTime_a&lt;br&gt;sort&#x3D;creditsPrice_a&lt;br&gt;sort&#x3D;deviceSession.userId_a&lt;br&gt;sort&#x3D;id_a
    # @option opts [Integer] :start_time startTime
    # @option opts [BOOLEAN] :with_additional_users withAdditionalUsers
    # @return [Array<(APIListOfAPIDeviceUsage, Fixnum, Hash)>] APIListOfAPIDeviceUsage data, response status code and response headers
    def get_user_device_usage_statistics_using_get_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsageAndStatisticsApi.get_user_device_usage_statistics_using_get ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsageAndStatisticsApi.get_user_device_usage_statistics_using_get"
      end
      # resource path
      local_var_path = '/api/v2/users/{userId}/device-usage'.sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'startTime'] = opts[:'start_time'] if !opts[:'start_time'].nil?
      query_params[:'withAdditionalUsers'] = opts[:'with_additional_users'] if !opts[:'with_additional_users'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apiKeyInHeader']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIListOfAPIDeviceUsage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageAndStatisticsApi#get_user_device_usage_statistics_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get reserved device time.
    # @param user_id userId
    # @param [Hash] opts the optional parameters
    # @return [APIBasicDeviceTime]
    def get_user_reserved_device_time_using_get(user_id, opts = {})
      data, _status_code, _headers = get_user_reserved_device_time_using_get_with_http_info(user_id, opts)
      data
    end

    # Get reserved device time.
    # @param user_id userId
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIBasicDeviceTime, Fixnum, Hash)>] APIBasicDeviceTime data, response status code and response headers
    def get_user_reserved_device_time_using_get_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsageAndStatisticsApi.get_user_reserved_device_time_using_get ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsageAndStatisticsApi.get_user_reserved_device_time_using_get"
      end
      # resource path
      local_var_path = '/api/v2/users/{userId}/device-time/reserved'.sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apiKeyInHeader']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIBasicDeviceTime')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageAndStatisticsApi#get_user_reserved_device_time_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get statistics.
    # @param user_id userId
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_time startTime
    # @option opts [BOOLEAN] :with_additional_users withAdditionalUsers (default to false)
    # @return [APIUserStatistics]
    def get_user_statistics_using_get(user_id, opts = {})
      data, _status_code, _headers = get_user_statistics_using_get_with_http_info(user_id, opts)
      data
    end

    # Get statistics.
    # @param user_id userId
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_time startTime
    # @option opts [BOOLEAN] :with_additional_users withAdditionalUsers
    # @return [Array<(APIUserStatistics, Fixnum, Hash)>] APIUserStatistics data, response status code and response headers
    def get_user_statistics_using_get_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsageAndStatisticsApi.get_user_statistics_using_get ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsageAndStatisticsApi.get_user_statistics_using_get"
      end
      # resource path
      local_var_path = '/api/v2/users/{userId}/statistics'.sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'startTime'] = opts[:'start_time'] if !opts[:'start_time'].nil?
      query_params[:'withAdditionalUsers'] = opts[:'with_additional_users'] if !opts[:'with_additional_users'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apiKeyInHeader']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIUserStatistics')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageAndStatisticsApi#get_user_statistics_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get used device time.
    # @param user_id userId
    # @param [Hash] opts the optional parameters
    # @return [APIBasicDeviceTime]
    def get_user_used_device_time_using_get(user_id, opts = {})
      data, _status_code, _headers = get_user_used_device_time_using_get_with_http_info(user_id, opts)
      data
    end

    # Get used device time.
    # @param user_id userId
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIBasicDeviceTime, Fixnum, Hash)>] APIBasicDeviceTime data, response status code and response headers
    def get_user_used_device_time_using_get_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsageAndStatisticsApi.get_user_used_device_time_using_get ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsageAndStatisticsApi.get_user_used_device_time_using_get"
      end
      # resource path
      local_var_path = '/api/v2/users/{userId}/device-time/used'.sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apiKeyInHeader']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIBasicDeviceTime')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageAndStatisticsApi#get_user_used_device_time_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get device time history.
    # @param user_id userId
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter filter parameter contains list of fields used for filter query result &lt;br&gt; examples: &lt;br&gt; filter&#x3D;starttime_eq_1576134485389&lt;br&gt;filter&#x3D;id_eq_1&lt;br&gt;filter&#x3D;_endtime_eq_1576134485389&lt;br&gt;filter&#x3D;username_eq_value&lt;br&gt;filter&#x3D;userid_eq_1
    # @option opts [Integer] :limit limit parameter define page size (default to 20)
    # @option opts [Integer] :offset offset parameter define page number (default to 0)
    # @option opts [String] :sort sort parameter contains list of fields used for sort query result &lt;br&gt; examples: &lt;br&gt; sort&#x3D;createTime_a&lt;br&gt;sort&#x3D;id_a&lt;br&gt;sort&#x3D;userName_a&lt;br&gt;sort&#x3D;type_a
    # @option opts [BOOLEAN] :with_additional_users withAdditionalUsers (default to false)
    # @return [APIUserDeviceTimeSummary]
    def get_users_device_time_history_summary_using_get(user_id, opts = {})
      data, _status_code, _headers = get_users_device_time_history_summary_using_get_with_http_info(user_id, opts)
      data
    end

    # Get device time history.
    # @param user_id userId
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter filter parameter contains list of fields used for filter query result &lt;br&gt; examples: &lt;br&gt; filter&#x3D;starttime_eq_1576134485389&lt;br&gt;filter&#x3D;id_eq_1&lt;br&gt;filter&#x3D;_endtime_eq_1576134485389&lt;br&gt;filter&#x3D;username_eq_value&lt;br&gt;filter&#x3D;userid_eq_1
    # @option opts [Integer] :limit limit parameter define page size
    # @option opts [Integer] :offset offset parameter define page number
    # @option opts [String] :sort sort parameter contains list of fields used for sort query result &lt;br&gt; examples: &lt;br&gt; sort&#x3D;createTime_a&lt;br&gt;sort&#x3D;id_a&lt;br&gt;sort&#x3D;userName_a&lt;br&gt;sort&#x3D;type_a
    # @option opts [BOOLEAN] :with_additional_users withAdditionalUsers
    # @return [Array<(APIUserDeviceTimeSummary, Fixnum, Hash)>] APIUserDeviceTimeSummary data, response status code and response headers
    def get_users_device_time_history_summary_using_get_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsageAndStatisticsApi.get_users_device_time_history_summary_using_get ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsageAndStatisticsApi.get_users_device_time_history_summary_using_get"
      end
      # resource path
      local_var_path = '/api/v2/users/{userId}/device-time-summary'.sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'withAdditionalUsers'] = opts[:'with_additional_users'] if !opts[:'with_additional_users'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apiKeyInHeader']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIUserDeviceTimeSummary')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageAndStatisticsApi#get_users_device_time_history_summary_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get device time history.
    # @param user_id userId
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter filter parameter contains list of fields used for filter query result &lt;br&gt; examples: &lt;br&gt; filter&#x3D;starttime_eq_1576134485388&lt;br&gt;filter&#x3D;id_eq_1&lt;br&gt;filter&#x3D;_endtime_eq_1576134485388&lt;br&gt;filter&#x3D;username_eq_value&lt;br&gt;filter&#x3D;userid_eq_1
    # @option opts [Integer] :limit limit parameter define page size (default to 20)
    # @option opts [Integer] :offset offset parameter define page number (default to 0)
    # @option opts [String] :sort sort parameter contains list of fields used for sort query result &lt;br&gt; examples: &lt;br&gt; sort&#x3D;createTime_a&lt;br&gt;sort&#x3D;id_a&lt;br&gt;sort&#x3D;userName_a&lt;br&gt;sort&#x3D;type_a
    # @option opts [BOOLEAN] :with_additional_users withAdditionalUsers (default to false)
    # @return [APIListOfAPIUserDeviceTime]
    def get_users_device_time_history_using_get(user_id, opts = {})
      data, _status_code, _headers = get_users_device_time_history_using_get_with_http_info(user_id, opts)
      data
    end

    # Get device time history.
    # @param user_id userId
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter filter parameter contains list of fields used for filter query result &lt;br&gt; examples: &lt;br&gt; filter&#x3D;starttime_eq_1576134485388&lt;br&gt;filter&#x3D;id_eq_1&lt;br&gt;filter&#x3D;_endtime_eq_1576134485388&lt;br&gt;filter&#x3D;username_eq_value&lt;br&gt;filter&#x3D;userid_eq_1
    # @option opts [Integer] :limit limit parameter define page size
    # @option opts [Integer] :offset offset parameter define page number
    # @option opts [String] :sort sort parameter contains list of fields used for sort query result &lt;br&gt; examples: &lt;br&gt; sort&#x3D;createTime_a&lt;br&gt;sort&#x3D;id_a&lt;br&gt;sort&#x3D;userName_a&lt;br&gt;sort&#x3D;type_a
    # @option opts [BOOLEAN] :with_additional_users withAdditionalUsers
    # @return [Array<(APIListOfAPIUserDeviceTime, Fixnum, Hash)>] APIListOfAPIUserDeviceTime data, response status code and response headers
    def get_users_device_time_history_using_get_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsageAndStatisticsApi.get_users_device_time_history_using_get ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsageAndStatisticsApi.get_users_device_time_history_using_get"
      end
      # resource path
      local_var_path = '/api/v2/users/{userId}/device-time'.sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'withAdditionalUsers'] = opts[:'with_additional_users'] if !opts[:'with_additional_users'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apiKeyInHeader']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIListOfAPIUserDeviceTime')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageAndStatisticsApi#get_users_device_time_history_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end