require File.join(File.dirname(__FILE__), "..", "spec_helper.rb")

describe ChaptersController do
  
  describe "show" do
    
    it "should get the show action" do
      get chapters_show_url
      response.should be_successful
      response.body.should match(/ChaptersController#show/)
    end
    
  end
  
end
