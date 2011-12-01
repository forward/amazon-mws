module AmazonMWS
    
  class Order
    include ROXML
    
    xml_name "Order"

    xml_reader :amazon_order_id, :from => "AmazonOrderId"
    xml_reader :purchase_date, :as => Time, :from => "PurchaseDate"
    xml_reader :last_update_date, :as => Time, :from => "LastUpdateDate"
    xml_reader :order_status, :from => "OrderStatus"
    xml_reader :sales_channel, :from => "SalesChannel"
    xml_reader :ship_service_level, :from => "ShipServiceLevel"
    xml_reader :fulfillment_channel, :from => "FulfillmentChannel"
    xml_reader :order_total, :as => OrderTotal, :from => "OrderTotal"
    xml_reader :shipping_address, :as => ShippingAddress, :from => "ShippingAddress"
    xml_reader :number_of_items_shipped, :as => Integer, :from => "NumberOfItemsShipped"
    xml_reader :number_of_items_unshipped, :as => Integer, :from => "NumberOfItemsUnshipped"
    xml_reader :payment_method, :from => "PaymentMethod"
    xml_reader :marketplace_id, :from => "MarketplaceId"
    xml_reader :buyer_email, :from => "BuyerEmail"
    xml_reader :buyer_name, :from => "BuyerName"
    xml_reader :shipment_service_level_category, :from => "ShipmentServiceLevelCategory"
  end
    
end