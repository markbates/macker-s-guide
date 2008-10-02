Mack::Routes.build do |r|

  # Added by rake generate:controller name=search actions=search
  r.with_options(:controller => :searches) do |map|
    map.search "/search", :action => :search, :method => :post
    map.connect "/search", :action => :search, :method => :get
  end # searches
  
  r.with_options(:host => 'www.mackframework.com', :scheme => 'http', :port => '80') do |map|
    map.mack_home '/'
    map.mack_about '/about'
    map.mack_archives '/archives'
    map.mack_contribute '/contribute'
    map.mack_support '/support'
    map.mack_user_guide '/user-guide'
  end

  r.home_page "/", :controller => :default, :action => :index
  
  r.chapters_show "*view", :controller => :chapters, :action => :show
  
end
