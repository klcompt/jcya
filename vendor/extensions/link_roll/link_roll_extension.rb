# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class LinkRollExtension < Radiant::Extension
  version "1.0"
  description "Allows you to add a link roll to your website"
  url "http://github.com/radiant/radiant-link-roll-extension"
  
  define_routes do |map|
    map.namespace :admin, :member => { :remove => :get } do |admin|
      admin.resources :links
    end
    
  end
  
  def activate
     admin.tabs.add 'Links', "/admin/links", :after => 'Pages'
     Page.send :include, LinkRollTags
  end
  
  def deactivate
    # admin.tabs.remove "Link Roll"
  end
  
end