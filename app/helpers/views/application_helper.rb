module Mack
  # Any modules below Mack::ViewHelpers will automatically be included into all views.
  # If you would like to include all Mack::ViewHelpers modules into another class you
  # can do so by simply including Mack::ViewHelpers
  module ViewHelpers
    module ApplicationHelper
      # Anything in this module will be included into all views
      
      def toc(id)
        if File.exists?(Mack::Paths.views('chapters', id.to_s, '_toc.html.erb'))
          sid = "#{id}_toc"
          val = '['
          val << link_to_function('+/-', js.toggle(sid))
          val << ']'
          val << render(:partial, "chapters/#{id}/toc")
          val << update_page {|p| p.hide(sid)} unless request.fullpath.match(/chapters\/#{id}/)
          return val
        end
        return ''
      end
      
      def code(type = :ruby, &block)
        concat("<pre name=\"code\" class=\"#{type}\">", block.binding)
        yield
        concat("</pre>", block.binding)
      end
      
      def chapter(title, view)
        # vs = view.split('/')
        # vs.pop
        # v = vs.join('/')
        chap = ''
        if File.exists?(Mack::Paths.views('chapters', view + '.html.erb'))
          chap << link_unless_current(title, chapters_show_url(:view => view.gsub('/', '-')))
        else
          chap << title
        end
        #chap << toc(v)
        chap
      end
      
      def page_title(title = nil)
        @page_title = title unless title.nil?
        @page_title ||= 'The Macker\'s Guide to the Galaxy'
      end
      
      def simple_link(text, link = text)
        link_to(text, link, :target => :_blank)
      end
      
      def mack_more
        [:active_record, :caching, :data_factory, :data_mapper, :distributed, :encryption, :facets, :haml, :javascript, :localization, :markaby, :notifier, :orm, :pdf_writer]
      end
      
      def mack_more_chapter(name)
        if File.exists?(Mack::Paths.views("chapters/mack_more/#{name}/index.html.erb"))
          chapter("mack-#{name}", "mack_more/#{name}/index") 
        else
          "mack-#{name}"
        end
      end
      
      def link_unless_current(text, link = text, options = {})
        unless link == request.fullpath
          return link_to(text, link, options)
        end
        return "<span class='current'>#{text}</span>"
      end
      
    end
  end
end
