class LinksController < ApplicationController

  def show
    @link = Link.find(params[:id].to_i(36))
    if redirect_to "http://"+@link.original
      @link.increment
      @link.save
    end
  end

  def index

  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)

    respond_to do |format|
      if @link.save!
        format.html { render :show, notice: 'Link was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  private
    def link_params
      params.require(:link).permit(:original, :clicks)
    end
end
