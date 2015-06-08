class LinksController < ApplicationController

  def show
    @link = Link.find(params[:id].to_i(36))
    if redirect_to @link.original
      @link.increment
      @link.save
    end
  end

  def new
    @link = Link.new
    @top_links = Link.order(clicks: :desc).first(100)
  end

  def create
    @link = Link.new(link_params)
      if @link.save!
         render :show, notice: 'Link was successfully created.'
      else
         render :new
      end
  end

  def landing

  end


  private
    def link_params
      params.require(:link).permit(:original, :clicks)
    end
end
