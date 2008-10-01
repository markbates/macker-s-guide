class SearchesController
  include Mack::Controller
  
  def search
    @results = []
    @query = params[:query]
    SearchCache.get.each do |so|
      if so.search(@query)
        @results << so
      end
    end
  end
  
end
