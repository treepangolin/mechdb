module ApplicationHelper
  def nav_helper(link_path)
    current_page?(link_path) ? 'nav-link active' : 'nav-link'
  end
end
