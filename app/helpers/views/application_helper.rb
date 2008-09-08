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
      
    end
  end
end
