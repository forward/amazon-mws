# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{katzil_amazonmws}
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Michael"]
  s.date = %q{2009-10-30}
  s.description = %q{A Ruby Wrapper for the Amazon MWS API}
  s.email = %q{david.michael@sonymusic.com}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    ".gitignore",
     "README.markdown",
     "VERSION",
     "examples/xml/cancel_feed_submissions.xml",
     "examples/xml/cancel_report_requests.xml",
     "examples/xml/error.xml",
     "examples/xml/get_feed_submission_count.xml",
     "examples/xml/get_feed_submission_list.xml",
     "examples/xml/get_feed_submission_list_by_next_token.xml",
     "examples/xml/get_feed_submission_result.xml",
     "examples/xml/get_report_count.xml",
     "examples/xml/get_report_list.xml",
     "examples/xml/get_report_request_count.xml",
     "examples/xml/get_report_request_list.xml",
     "examples/xml/get_report_request_list_by_next_token.xml",
     "examples/xml/get_report_schedule_count.xml",
     "examples/xml/get_report_schedule_list.xml",
     "examples/xml/get_report_schedule_list_by_next_token.xml",
     "examples/xml/manage_report_schedule.xml",
     "examples/xml/request_report.xml",
     "examples/xml/submit_feed.xml",
     "examples/xml/update_report_acknowledgements.xml",
     "examples/xsd/Inventory.xsd",
     "examples/xsd/Item.xsd",
     "examples/xsd/Listings.xsd",
     "examples/xsd/OrderAcknowledgement.xsd",
     "examples/xsd/OrderAdjustment.xsd",
     "examples/xsd/OrderFulfillment.xsd",
     "examples/xsd/Override.xsd",
     "examples/xsd/Price.xsd",
     "examples/xsd/ProcessingReport.xsd",
     "examples/xsd/Product.xsd",
     "examples/xsd/Product/AutoAccessory.xsd",
     "examples/xsd/Product/Beauty.xsd",
     "examples/xsd/Product/CE.xsd",
     "examples/xsd/Product/CameraPhoto.xsd",
     "examples/xsd/Product/FoodAndBeverages.xsd",
     "examples/xsd/Product/Gourmet.xsd",
     "examples/xsd/Product/Health.xsd",
     "examples/xsd/Product/Home.xsd",
     "examples/xsd/Product/Jewelry.xsd",
     "examples/xsd/Product/Miscellaneous.xsd",
     "examples/xsd/Product/MusicalInstruments.xsd",
     "examples/xsd/Product/Office.xsd",
     "examples/xsd/Product/PetSupplies.xsd",
     "examples/xsd/Product/ProductClothing.xsd",
     "examples/xsd/Product/SWVG.xsd",
     "examples/xsd/Product/Sports.xsd",
     "examples/xsd/Product/TiresAndWheels.xsd",
     "examples/xsd/Product/Tools.xsd",
     "examples/xsd/Product/ToysBaby.xsd",
     "examples/xsd/Product/Wireless.xsd",
     "examples/xsd/ProductImage.xsd",
     "examples/xsd/Relationship.xsd",
     "examples/xsd/SettlementReport.xsd",
     "examples/xsd/amzn-base.xsd",
     "examples/xsd/amzn-envelope.xsd",
     "examples/xsd/amzn-header.xsd",
     "lib/amazonmws.rb",
     "lib/authentication.rb",
     "lib/authentication/query_string.rb",
     "lib/authentication/signature.rb",
     "lib/base.rb",
     "lib/connection.rb",
     "lib/connection/management.rb",
     "lib/connection/request_builder.rb",
     "lib/exceptions.rb",
     "lib/feed.rb",
     "lib/feed_builder.rb",
     "lib/feed_enumerations.rb",
     "lib/feed_submission.rb",
     "lib/lib/extensions.rb",
     "lib/lib/memoizable.rb",
     "lib/orders.rb",
     "lib/report.rb",
     "lib/report_enumerations.rb",
     "lib/report_info.rb",
     "lib/report_request.rb",
     "lib/report_schedule.rb",
     "lib/response.rb",
     "lib/response/cancel_feed_submissions_response.rb",
     "lib/response/cancel_report_requests_response.rb",
     "lib/response/get_feed_submission_count_response.rb",
     "lib/response/get_feed_submission_list_by_next_token_response.rb",
     "lib/response/get_feed_submission_list_response.rb",
     "lib/response/get_feed_submission_result_response.rb",
     "lib/response/get_report_count_response.rb",
     "lib/response/get_report_list_response.rb",
     "lib/response/get_report_request_count_response.rb",
     "lib/response/get_report_request_list_by_next_token_response.rb",
     "lib/response/get_report_request_list_response.rb",
     "lib/response/get_report_schedule_count_response.rb",
     "lib/response/get_report_schedule_list_by_next_token_response.rb",
     "lib/response/get_report_schedule_list_response.rb",
     "lib/response/manage_report_schedule_response.rb",
     "lib/response/request_report_response.rb",
     "lib/response/response_error.rb",
     "lib/response/submit_feed_response.rb",
     "lib/response/update_reports_acknowledgements_response.rb",
     "lib/version.rb",
     "test/authentication_test.rb",
     "test/connection_test.rb",
     "test/feed_builder_test.rb",
     "test/feed_submission_test.rb",
     "test/feed_test.rb",
     "test/query_string_test.rb",
     "test/report_test.rb",
     "test/request_test.rb",
     "test/response_test.rb",
     "test/signature_test.rb",
     "test/test_config.yml",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/dmichael/amazon-mws}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A Ruby Wrapper for the Amazon MWS API}
  s.test_files = [
    "test/authentication_test.rb",
     "test/connection_test.rb",
     "test/feed_builder_test.rb",
     "test/feed_submission_test.rb",
     "test/feed_test.rb",
     "test/query_string_test.rb",
     "test/report_test.rb",
     "test/request_test.rb",
     "test/response_test.rb",
     "test/signature_test.rb",
     "test/test_helper.rb"
  ]
  s.add_dependency('roxml')
  s.add_dependency('xml-simple')
  s.add_dependency('ruby-hmac')


  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

