Mack::Routes.build do |r|

  r.home_page "/", :controller => :default, :action => :index
  
  r.chapters_show "*view", :controller => :chapters, :action => :show
  
end
