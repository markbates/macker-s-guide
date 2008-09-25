class ChaptersController
  include Mack::Controller
  
  cache_pages
  
  def show
    render(:action, File.join(params[:view]))
  end
  
end
