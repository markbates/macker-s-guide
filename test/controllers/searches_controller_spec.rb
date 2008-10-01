require File.join(File.dirname(__FILE__), "..", "spec_helper.rb")

describe SearchesController do
  
  describe "search" do
    
    it 'should return a list of search results' do
      get search_url(:query => 'controller view')
      response.should be_successful
      results = assigns(:results)
      results.should_not be_empty
    end
    
  end
  
end
