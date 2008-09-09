class ChaptersController
  include Mack::Controller
  
  def show
    render(:action, params[:view].gsub('-', '/'))
  end
  
end
