class LinksController < ApplicationController
  def index
    @links = Link.all
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    @link.user = current_user
    rlinkparams = LinkThumbnailer.generate(params[:link][:link])
    @link.description = rlinkparams.description
    @link.title = rlinkparams.title
    if @link.save
      flash[:notice] = 'The link has been saved'
    else
      @erros = @link.errors
    end
    redirect_to links_path
  end

  private
#Note: both the model and the field are called link...
  def link_params
     params.require(:link).permit(:link)
  end
end
