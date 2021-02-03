module ApplicationHelper
  def nav_helper(link_path)
    current_page?(link_path) ? 'nav-link active' : 'nav-link'
  end

  def icon(icon, options = {})
    file = File.read("node_modules/bootstrap-icons/icons/#{icon}.svg")
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'

    if options[:class].present?
      svg['class'] += " " + options[:class]
    end

    if options[:style].present?
      svg['style'] += " " + options[:style]
    end
    
    if options[:size].present?
      svg['width'], svg['height'] = options[:size]
    end
    doc.to_html.html_safe
  end
end
