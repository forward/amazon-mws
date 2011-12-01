module AmazonMWS
    
  class ShippingAddress
    include ROXML
    
    xml_name "ShippingAddress"
    
    xml_reader :name, :from => "Name"
    xml_reader :address_line1, :from => "AddressLine1"
    xml_reader :address_line2, :from => "AddressLine2"
    xml_reader :city, :from => "City"
    xml_reader :state_or_region, :from => "StateOrRegion"
    xml_reader :postal_code, :from => "PostalCode"
    xml_reader :country_code, :from => "CountryCode"
    xml_reader :phone, :from => "Phone"
  end
    
end