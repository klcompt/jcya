class Admin::LinksController < Admin::ResourceController
  model_class Link

  def index
    @links = Link.find(:all, :order => 'created_at DESC')
  end

  #allow title and url to be set with a bookmarklet
  def new    
    self.model = model_class.new(:title => params[:title], :url => params[:url])
    render :template => "admin/links/edit" if handle_new_or_edit_post
  end  
end
