class Admin::SponsorsController < Admin::ResourceController 
  model_class Sponsor

  def images_xml
    render :text => "todo KLC"
  end
end
