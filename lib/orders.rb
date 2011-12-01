module AmazonMWS
  module Orders
    
    def list_orders(params = {})
      response = post("/Orders/2011-01-01", {"Action" => "ListOrders"}.merge(params))
      ListOrdersResponse.format(response)
    end
    
  end
end