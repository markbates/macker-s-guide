class SearchCache < Cachetastic::Caches::Base
  
  class << self
    def get
      super('db') do
        db = []
        Dir.glob(Mack::Paths.views('chapters', '**/*.html.erb')).reject{|f| f.match(/\/_/)}.each do |f|
          # puts f
          so = SearchObject.new
          so.url = f.match(/chapters\/(.+)\.html\.erb/).captures.first
          body = File.read(f)
          body.gsub!(/(<[^>]+>)/, '')
          body.gsub!(/&lt;%=/, '')
          body.gsub!(/%>/, '')
          # body.gsub!("\n", '')
          # body.gsub!("\r", '')
          # body.gsub!("\t", '')
          # body.squeeze!
          # body.strip!
          so.simple_body = body
          so.words = body.scan(/(\w+)/).flatten.uniq.collect {|c| c.downcase}
          db << so
        end
        set('db', db)
        db
      end
    end
  end
  
end