require File.join(File.dirname(__FILE__), 'test_helper')
# flatten the namespace
require 'mocha'
include AmazonMWS

AmazonMWS::Base.debug = true

class OrdersTest < Test::Unit::TestCase 
  def setup
    config = YAML.load_file( File.join(File.dirname(__FILE__), 'test_config.yml') )
    @marketplace = AmazonMWS::Base.new(config)
  end
      
  def test_get_list_orders_failure
    @marketplace.stubs(:post).returns(
      mock_response(401, :body => File.read(xml_for('error')), :content_type => "text/xml")
    )

    response = @marketplace.list_orders
    assert_kind_of(ResponseError, response)
  end    
  
  def test_get_list_orders_success
    @marketplace.stubs(:post).returns(
      mock_response(200, :body => File.read(xml_for('list_orders')), :content_type => "text/xml")
    )
    
    response = @marketplace.list_orders
    assert_kind_of(ListOrdersResponse, response)
  end
  
  def test_list_orders_response_should_contain_correct_values
    @marketplace.stubs(:post).returns(
      mock_response(200, :body => File.read(xml_for('list_orders')), :content_type => "text/xml")
    )
    
    response = @marketplace.list_orders

    assert_equal("REQUEST_ID", response.request_id)
    result = response.list_orders_result
    assert_equal(Date.new(2011,11,30).to_time, result.created_before)
    assert_equal(2, result.orders.count)
    
    order = result.orders[1]
    assert_equal("202-6748207-7692369", order.amazon_order_id)
    assert_equal(DateTime.new(2011,11,29,11,55,19).to_time, order.purchase_date)
    assert_equal(DateTime.new(2011,11,29,12,25,43).to_time, order.last_update_date)
    assert_equal("Unshipped", order.order_status)
    assert_equal("Amazon.co.uk", order.sales_channel)
    assert_equal("Std UK Dom", order.ship_service_level)
    assert_equal("MFN", order.fulfillment_channel)
    assert_equal(44.99, order.order_total.amount)
    assert_equal("GBP", order.order_total.currency_code)
    assert_equal("Jane Smith", order.shipping_address.name)
    assert_equal("A cottage", order.shipping_address.address_line1)
    assert_equal("321 Test Road", order.shipping_address.address_line2)
    assert_equal("Bigcity", order.shipping_address.city)
    assert_equal("London", order.shipping_address.state_or_region)
    assert_equal("SE20 2LF", order.shipping_address.postal_code)
    assert_equal("GB", order.shipping_address.country_code)
    assert_equal("02043218765", order.shipping_address.phone)
    assert_equal(0, order.number_of_items_shipped)
    assert_equal(1, order.number_of_items_unshipped)
    assert_equal("Other", order.payment_method)
    assert_equal("A1F83G8C2ARO7P", order.marketplace_id)
    assert_equal("zkmkrwbfdb7rxg7@marketplace.amazon.co.uk", order.buyer_email)
    assert_equal("jane smith", order.buyer_name)
    assert_equal("Standard", order.shipment_service_level_category)
  end
  
end