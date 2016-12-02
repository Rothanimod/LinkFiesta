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
      if categories_array = associated_categories(params[:link][:comment])
          categories_array.each do | category |
            #still dont know why category is an array?
          @link.categories.create(name: category[0])
        end
      end
    else
      @erros = @link.errors
    end
    redirect_to links_path
  end

  private
#Note: both the model and the field are called link...
  def link_params
     params.require(:link).permit(:link, :comment)
  end

  def associated_categories(comment)
    #regex matching anything within a hashtag
    regex = /(?:\s|^)(?:#(?!(?:\d+|\w+?_|_\w+?)(?:\s|$)))(\w+)(?=\s|$)/
    #we return the matching strings within an array
    comment.scan(regex)
  end
end
