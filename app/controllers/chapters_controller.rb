class ChaptersController
  include Mack::Controller
  
  cache_pages
  
  def show
    render(:action, params[:view].gsub('-', '/'))
  end
  
end
