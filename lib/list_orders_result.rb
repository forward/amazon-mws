module AmazonMWS
    
    class ListOrdersResult
      include ROXML

      xml_name "ListOrdersResult"
      
      xml_reader :created_before, :from => "CreatedBefore", :as => Time
      xml_reader :orders, :in => "Orders", :from => "Order", :as => [Order]
    end

end
