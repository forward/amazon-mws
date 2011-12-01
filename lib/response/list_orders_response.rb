module AmazonMWS
    
    class ListOrdersResponse < Response
      xml_name "ListOrdersResponse"

      xml_reader :request_id, :in => "ResponseMetadata"
      
      xml_reader :list_orders_result, :from => "ListOrdersResult" , :as => ListOrdersResult
      #xml_reader :orders, :from => "Order", :in => "ListOrdersResult/Orders", :as => [Order]
    end

end
