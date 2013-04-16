require 'liquid'

module Jekyll
  module RdfSummaryFilter

    PROPERTIES = [
      {'name' => 'subClassOf'    , 'type' => 'uri' , 'property' => 'rdfs:subClassOf'},
      {'name' => 'subPropertyOf' , 'type' => 'uri' , 'property' => 'rdfs:subPropertyOf'}
    ]

    def rdf_summary(item, item_type)
      case item_type
      when 'class'
        type = 'rdfs:Class'
      when 'property'
        type = 'rdf:Property'
      else
        raise Exception.new("Unknown RDF summary type '#{item_type}'.")
      end

      ext_info = false
      PROPERTIES.each do |p|
        if item.has_key?(p['name'])
          ext_info = true
        end
      end

      ret = []
      ret << "<section id=\"#{item['label']}\" about=\"##{item['label']}\" typeof=\"#{type}\">"
      ret << "  <h1 property=\"rdfs:label\">#{item['label']}</h1>"
      if ext_info
        ret << "  <table class=\"info\">"
        ret << "  <col width=\"30%\"/><col width=\"70%\"/>"
        PROPERTIES.each do |p|
          if item.has_key?(p['name'])
            case p['type']
            when 'uri'
              uri = item[p['name']]
              if uri.include? '#'
                name  = uri.split('#')[1]
                value = "<a rel=\"#{p['property']}\" href=\"#{uri}\">#{name}</a>"
              end
            end
            ret << "    <tr><th>#{p['name']}</th><td>#{value}</td></tr>"
          end
        end
        ret << "  </table>"
      end
      ret << "  <p property=\"rdfs:comment\">#{item['comment']}</p>"
      ret << "  <a rel=\"rdfs:isDefinedBy\" href=\"#\"></a>"
      ret << "</section>"
      return ret.join("\n")
    end

  end
end

Liquid::Template.register_filter(Jekyll::RdfSummaryFilter)