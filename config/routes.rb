Mack::Routes.build do |r|

  # Added by rake generate:controller name=search actions=search
  r.with_options(:controller => :searches) do |map|
    map.search "/search", :action => :search, :method => :post
    map.connect "/search", :action => :search, :method => :get
  end # searches

  r.home_page "/", :controller => :default, :action => :index
  
  r.chapters_show "*view", :controller => :chapters, :action => :show
  
end
