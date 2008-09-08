Mack::Routes.build do |r|

  # Added by rake generate:controller name=chapter actions=show
  r.with_options(:controller => :chapters) do |map|
    # map.chapters_show "/chapters/:id/:title", :action => :show
    map.chapters_show "/chapters/:view", :action => :show
  end # chapters
  
  r.home_page "/", :controller => :default, :action => :index
  
  r.defaults
  
end
