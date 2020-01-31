module ApplicationHelper
  def target_blank_link(link)
    if link["http"] # link.include?('http')
      new_link = link
    else
      new_link = 'http://' + link
    end
    link_to new_link, new_link, target: :_blank, rel: :noreferrer
  end
end
