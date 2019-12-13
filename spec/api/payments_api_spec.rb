=begin
#BitbarCloud API

#BitbarCloud API.

OpenAPI spec version: 2.87.0
Contact: support@bitbar.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'spec_helper'
require 'json'

# Unit tests for BitbarCloudApiClient::PaymentsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PaymentsApi' do
  before do
    # run before each test
    @instance = BitbarCloudApiClient::PaymentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentsApi' do
    it 'should create an instance of PaymentsApi' do
      expect(@instance).to be_instance_of(BitbarCloudApiClient::PaymentsApi)
    end
  end

  # unit tests for buy_service_using_post
  # Buy service.
  # @param payment_method paymentMethod
  # @param service_id serviceId
  # @param user_id userId
  # @param [Hash] opts the optional parameters
  # @option opts [String] :address address
  # @option opts [String] :braintree_nonce braintreeNonce
  # @option opts [String] :card_number cardNumber
  # @option opts [String] :city city
  # @option opts [Integer] :count count
  # @option opts [String] :country country
  # @option opts [String] :cvv cvv
  # @option opts [String] :email email
  # @option opts [String] :expiration_date expirationDate
  # @option opts [String] :first_name firstName
  # @option opts [String] :last_name lastName
  # @option opts [String] :organization organization
  # @option opts [String] :phone phone
  # @option opts [String] :state state
  # @option opts [String] :stripe_token stripeToken
  # @option opts [String] :vat_id vatId
  # @option opts [String] :zip zip
  # @return [APIServicePaymentStatus]
  describe 'buy_service_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_subscription_using_delete
  # Cancel service subscription.
  # @param account_service_id accountServiceId
  # @param user_id userId
  # @param [Hash] opts the optional parameters
  # @return [APIServicePaymentStatus]
  describe 'cancel_subscription_using_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_service_payment_using_get
  # Get billing information.
  # @param account_service_id accountServiceId
  # @param user_id userId
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :on_date onDate
  # @return [APIAccountServicePayment]
  describe 'get_account_service_payment_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_available_services_using_get
  # Get available services.
  # For not logged in users
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter filter parameter contains list of fields used for filter query result &lt;br&gt; examples: &lt;br&gt; filter&#x3D;archivetime_eq_1576134485598&lt;br&gt;filter&#x3D;includedhours_eq_1&lt;br&gt;filter&#x3D;name_eq_value&lt;br&gt;filter&#x3D;chargetype_eq_usage&lt;br&gt;filter&#x3D;priceperhour_eq_1&lt;br&gt;filter&#x3D;description_eq_value&lt;br&gt;filter&#x3D;autorenew_eq_true&lt;br&gt;filter&#x3D;activatetime_eq_1576134485598&lt;br&gt;filter&#x3D;id_eq_1&lt;br&gt;filter&#x3D;centprice_eq_1&lt;br&gt;filter&#x3D;customplan_eq_true&lt;br&gt;filter&#x3D;activated_eq_true
  # @option opts [Integer] :limit limit parameter define page size
  # @option opts [Integer] :offset offset parameter define page number
  # @option opts [String] :sort sort parameter contains list of fields used for sort query result &lt;br&gt; examples: &lt;br&gt; sort&#x3D;archiveTime_a&lt;br&gt;sort&#x3D;includedHours_a&lt;br&gt;sort&#x3D;name_a&lt;br&gt;sort&#x3D;chargeType_a&lt;br&gt;sort&#x3D;pricePerHour_a&lt;br&gt;sort&#x3D;description_a&lt;br&gt;sort&#x3D;autoRenew_a&lt;br&gt;sort&#x3D;activateTime_a&lt;br&gt;sort&#x3D;id_a&lt;br&gt;sort&#x3D;centPrice_a&lt;br&gt;sort&#x3D;customPlan_a&lt;br&gt;sort&#x3D;activated_a
  # @return [APIListOfAPIService]
  describe 'get_available_services_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_billing_period_using_get
  # Get billing period.
  # @param billing_period_id billingPeriodId
  # @param user_id userId
  # @param [Hash] opts the optional parameters
  # @return [APIBillingPeriod]
  describe 'get_billing_period_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_receipt_using_get
  # Get purchased service receipt.
  # @param billing_period_id billingPeriodId
  # @param user_id userId
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_receipt_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_receipts_using_get
  # Get receipt.
  # @param user_id userId
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter filter parameter contains list of fields used for filter query result &lt;br&gt; examples: &lt;br&gt; filter&#x3D;accountid_eq_1&lt;br&gt;filter&#x3D;deactivatereason_eq_initial_failure&lt;br&gt;filter&#x3D;price_eq_1&lt;br&gt;filter&#x3D;chargetype_eq_usage&lt;br&gt;filter&#x3D;paymentmethod_eq_paypal&lt;br&gt;filter&#x3D;autorenew_eq_true&lt;br&gt;filter&#x3D;active_eq_true&lt;br&gt;filter&#x3D;starttime_eq_1576134485787&lt;br&gt;filter&#x3D;id_eq_1&lt;br&gt;filter&#x3D;_endtime_eq_1576134485787&lt;br&gt;filter&#x3D;activatedbyname_eq_value&lt;br&gt;filter&#x3D;servicename_eq_value&lt;br&gt;filter&#x3D;deactivatedbyname_eq_value
  # @option opts [Integer] :limit limit parameter define page size
  # @option opts [Integer] :offset offset parameter define page number
  # @option opts [String] :sort sort parameter contains list of fields used for sort query result &lt;br&gt; examples: &lt;br&gt; sort&#x3D;accountId_a&lt;br&gt;sort&#x3D;price_a&lt;br&gt;sort&#x3D;chargeType_a&lt;br&gt;sort&#x3D;paymentMethod_a&lt;br&gt;sort&#x3D;autoRenew_a&lt;br&gt;sort&#x3D;active_a&lt;br&gt;sort&#x3D;startTime_a&lt;br&gt;sort&#x3D;id_a&lt;br&gt;sort&#x3D;_endTime_a&lt;br&gt;sort&#x3D;activatedByName_a&lt;br&gt;sort&#x3D;serviceName_a&lt;br&gt;sort&#x3D;deactivatedByName_a
  # @return [APIListOfAPIAccountService]
  describe 'get_receipts_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_active_services_using_get
  # Get active services.
  # @param user_id userId
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter filter parameter contains list of fields used for filter query result &lt;br&gt; examples: &lt;br&gt; filter&#x3D;accountid_eq_1&lt;br&gt;filter&#x3D;deactivatereason_eq_initial_failure&lt;br&gt;filter&#x3D;price_eq_1&lt;br&gt;filter&#x3D;chargetype_eq_usage&lt;br&gt;filter&#x3D;paymentmethod_eq_paypal&lt;br&gt;filter&#x3D;autorenew_eq_true&lt;br&gt;filter&#x3D;active_eq_true&lt;br&gt;filter&#x3D;starttime_eq_1576134485599&lt;br&gt;filter&#x3D;id_eq_1&lt;br&gt;filter&#x3D;_endtime_eq_1576134485599&lt;br&gt;filter&#x3D;activatedbyname_eq_value&lt;br&gt;filter&#x3D;servicename_eq_value&lt;br&gt;filter&#x3D;deactivatedbyname_eq_value
  # @option opts [Integer] :limit limit parameter define page size
  # @option opts [Integer] :offset offset parameter define page number
  # @option opts [String] :sort sort parameter contains list of fields used for sort query result &lt;br&gt; examples: &lt;br&gt; sort&#x3D;accountId_a&lt;br&gt;sort&#x3D;price_a&lt;br&gt;sort&#x3D;chargeType_a&lt;br&gt;sort&#x3D;paymentMethod_a&lt;br&gt;sort&#x3D;autoRenew_a&lt;br&gt;sort&#x3D;active_a&lt;br&gt;sort&#x3D;startTime_a&lt;br&gt;sort&#x3D;id_a&lt;br&gt;sort&#x3D;_endTime_a&lt;br&gt;sort&#x3D;activatedByName_a&lt;br&gt;sort&#x3D;serviceName_a&lt;br&gt;sort&#x3D;deactivatedByName_a
  # @return [APIListOfAPIAccountService]
  describe 'get_user_active_services_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_available_services_using_get
  # Get available services.
  # @param user_id userId
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter filter parameter contains list of fields used for filter query result &lt;br&gt; examples: &lt;br&gt; filter&#x3D;archivetime_eq_1576134485600&lt;br&gt;filter&#x3D;includedhours_eq_1&lt;br&gt;filter&#x3D;name_eq_value&lt;br&gt;filter&#x3D;chargetype_eq_usage&lt;br&gt;filter&#x3D;priceperhour_eq_1&lt;br&gt;filter&#x3D;description_eq_value&lt;br&gt;filter&#x3D;autorenew_eq_true&lt;br&gt;filter&#x3D;activatetime_eq_1576134485600&lt;br&gt;filter&#x3D;id_eq_1&lt;br&gt;filter&#x3D;centprice_eq_1&lt;br&gt;filter&#x3D;customplan_eq_true&lt;br&gt;filter&#x3D;activated_eq_true
  # @option opts [Integer] :limit limit parameter define page size
  # @option opts [Integer] :offset offset parameter define page number
  # @option opts [String] :sort sort parameter contains list of fields used for sort query result &lt;br&gt; examples: &lt;br&gt; sort&#x3D;archiveTime_a&lt;br&gt;sort&#x3D;includedHours_a&lt;br&gt;sort&#x3D;name_a&lt;br&gt;sort&#x3D;chargeType_a&lt;br&gt;sort&#x3D;pricePerHour_a&lt;br&gt;sort&#x3D;description_a&lt;br&gt;sort&#x3D;autoRenew_a&lt;br&gt;sort&#x3D;activateTime_a&lt;br&gt;sort&#x3D;id_a&lt;br&gt;sort&#x3D;centPrice_a&lt;br&gt;sort&#x3D;customPlan_a&lt;br&gt;sort&#x3D;activated_a
  # @return [APIListOfAPIService]
  describe 'get_user_available_services_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_billing_periods_using_get
  # Get users billing periods.
  # @param user_id userId
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter filter parameter contains list of fields used for filter query result &lt;br&gt; examples: &lt;br&gt; filter&#x3D;additionalhoursprice_eq_1&lt;br&gt;filter&#x3D;mail_eq_value&lt;br&gt;filter&#x3D;totalprice_eq_1&lt;br&gt;filter&#x3D;startbillingperiod_eq_1576134482689&lt;br&gt;filter&#x3D;userid_eq_1&lt;br&gt;filter&#x3D;_endbillingperiod_eq_1576134482689&lt;br&gt;filter&#x3D;subscriptionend_eq_1576134482689&lt;br&gt;filter&#x3D;serviceprice_eq_1&lt;br&gt;filter&#x3D;createtime_eq_1576134482689&lt;br&gt;filter&#x3D;subscriptionstart_eq_1576134482689&lt;br&gt;filter&#x3D;paid_eq_true&lt;br&gt;filter&#x3D;lastpaymentdate_eq_1576134482689&lt;br&gt;filter&#x3D;paymentmethod_eq_paypal&lt;br&gt;filter&#x3D;additionalhours_eq_1&lt;br&gt;filter&#x3D;id_eq_1&lt;br&gt;filter&#x3D;plan_eq_value
  # @option opts [Integer] :limit limit parameter define page size
  # @option opts [Integer] :offset offset parameter define page number
  # @option opts [String] :sort sort parameter contains list of fields used for sort query result &lt;br&gt; examples: &lt;br&gt; sort&#x3D;additionalHoursPrice_a&lt;br&gt;sort&#x3D;mail_a&lt;br&gt;sort&#x3D;totalPrice_a&lt;br&gt;sort&#x3D;startBillingPeriod_a&lt;br&gt;sort&#x3D;userId_a&lt;br&gt;sort&#x3D;_endBillingPeriod_a&lt;br&gt;sort&#x3D;subscriptionEnd_a&lt;br&gt;sort&#x3D;servicePrice_a&lt;br&gt;sort&#x3D;createTime_a&lt;br&gt;sort&#x3D;subscriptionStart_a&lt;br&gt;sort&#x3D;lastPaymentDate_a&lt;br&gt;sort&#x3D;paymentMethod_a&lt;br&gt;sort&#x3D;additionalHours_a&lt;br&gt;sort&#x3D;id_a&lt;br&gt;sort&#x3D;paymentDate_a&lt;br&gt;sort&#x3D;additionalHoursPaymentDate_a&lt;br&gt;sort&#x3D;plan_a
  # @return [APIListOfAPIBillingPeriod]
  describe 'get_user_billing_periods_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_purchases_using_get
  # Get purchased services.
  # @param user_id userId
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter filter parameter contains list of fields used for filter query result &lt;br&gt; examples: &lt;br&gt; filter&#x3D;accountid_eq_1&lt;br&gt;filter&#x3D;deactivatereason_eq_initial_failure&lt;br&gt;filter&#x3D;price_eq_1&lt;br&gt;filter&#x3D;chargetype_eq_usage&lt;br&gt;filter&#x3D;paymentmethod_eq_paypal&lt;br&gt;filter&#x3D;autorenew_eq_true&lt;br&gt;filter&#x3D;active_eq_true&lt;br&gt;filter&#x3D;starttime_eq_1576134485601&lt;br&gt;filter&#x3D;id_eq_1&lt;br&gt;filter&#x3D;_endtime_eq_1576134485601&lt;br&gt;filter&#x3D;activatedbyname_eq_value&lt;br&gt;filter&#x3D;servicename_eq_value&lt;br&gt;filter&#x3D;deactivatedbyname_eq_value
  # @option opts [Integer] :limit limit parameter define page size
  # @option opts [Integer] :offset offset parameter define page number
  # @option opts [String] :sort sort parameter contains list of fields used for sort query result &lt;br&gt; examples: &lt;br&gt; sort&#x3D;accountId_a&lt;br&gt;sort&#x3D;price_a&lt;br&gt;sort&#x3D;chargeType_a&lt;br&gt;sort&#x3D;paymentMethod_a&lt;br&gt;sort&#x3D;autoRenew_a&lt;br&gt;sort&#x3D;active_a&lt;br&gt;sort&#x3D;startTime_a&lt;br&gt;sort&#x3D;id_a&lt;br&gt;sort&#x3D;_endTime_a&lt;br&gt;sort&#x3D;activatedByName_a&lt;br&gt;sort&#x3D;serviceName_a&lt;br&gt;sort&#x3D;deactivatedByName_a
  # @return [APIListOfAPIAccountService]
  describe 'get_user_purchases_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end