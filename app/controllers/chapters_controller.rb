class ChaptersController
  include Mack::Controller
  
  def show
    render(:action, params[:view])
  end
  
end
