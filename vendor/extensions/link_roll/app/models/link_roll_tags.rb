module LinkRollTags
  include Radiant::Taggable

  tag 'links' do |tag|
    tag.expand
  end

  tag 'links:each' do |tag|
    result = []
    params = {}
    params[:order] = tag.attr['order'] || 'created_at DESC'
    params[:limit] = tag.attr['limit'] if tag.attr['limit']
    Link.find(:all, params).each do |link|    
      tag.locals.link = link
      result << tag.expand
    end
    result
  end

  tag 'links:each:link' do |tag|
    link = tag.locals.link
    %{<a href="#{link.url}" title="#{link.description}">#{link.title}</a>}
  end
  
  tag 'links:each:url' do |tag|
    link = tag.locals.link
    %{#{link.url}}
  end
  
  tag 'links:each:description' do |tag|
    link = tag.locals.link
    %{#{link.description}}
  end   
  
  tag 'links:each:title' do |tag|
    link = tag.locals.link
    %{#{link.title}}
  end  
end
