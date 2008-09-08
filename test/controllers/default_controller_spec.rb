require File.join(File.dirname(__FILE__), "..", "spec_helper.rb")

describe DefaultController do
  
  it "should be able to successfully connect to home page" do
    get home_page_url
    response.should be_successful
    response.body.should match(/Welcome to your Mack application!/)
  end
  
end
