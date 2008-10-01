class SearchObject
  attr_accessor :url
  attr_accessor :words
  attr_accessor :simple_body
  
  def search(terms)
    if terms.is_a?(String)
      terms = terms.split(' ')
    end
    terms = [terms].flatten
    found = false
    terms.each do |t|
      found = self.words.include?(t.downcase)
    end
    found
  end
  
end