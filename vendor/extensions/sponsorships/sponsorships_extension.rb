# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class SponsorshipsExtension < Radiant::Extension
  version "1.0"
  description "Support managing sponsors"
  url "http://github.com/klcompt/sponsorships"
  
  define_routes do |map|
    map.namespace :admin, :member => { :remove => :get } do |admin|
      admin.resources :sponsorships
    end
    map.connect 'sponsors/images_xml', :controller => 'sponsors', :action => 'images_xml'
  end
  
  def activate
    admin.tabs.add "Sponsorships", "/admin/sponsorships", :after => "Layouts", :visibility => [:all]
  end
  
  def deactivate
    # admin.tabs.remove "Sponsorships"
  end
  
end
