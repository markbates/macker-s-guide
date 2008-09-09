module Mack
  # Any modules below Mack::ViewHelpers will automatically be included into all views.
  # If you would like to include all Mack::ViewHelpers modules into another class you
  # can do so by simply including Mack::ViewHelpers
  module ViewHelpers
    module ApplicationHelper
      # Anything in this module will be included into all views
      
      def code(type = :ruby, &block)
        concat("<pre name=\"code\" class=\"#{type}\">", block.binding)
        yield
        concat("</pre>", block.binding)
      end
      
      def chapter(title, view)
        link_to(title, chapters_show_url(:view => view.gsub('/', '-')))
      end
      
      def page_title(title = nil)
        @page_title = title unless title.nil?
        @page_title ||= 'The Macker\'s Guide to the Universe'
      end
      
      def simple_link(link)
        link_to(link, link, :target => :_blank)
      end
      
    end
  end
end
