module AmazonMWS
    
  class OrderTotal
    include ROXML
    
    xml_name "OrderTotal"
    
    xml_reader :currency_code, :from => "CurrencyCode"
    xml_reader :amount, :as => Float, :from => "Amount"
  end
    
end