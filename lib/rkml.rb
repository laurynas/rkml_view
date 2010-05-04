require 'kml'

module ActionView
  module TemplateHandlers
    class RKML < TemplateHandler
      include Compilable

      def compile(template)
        "_set_controller_content_type(Mime::XML);" +
          "kml = KMLFile.new;" +
          template.source +
          ";kml.render;"
      end
    end
  end
end
