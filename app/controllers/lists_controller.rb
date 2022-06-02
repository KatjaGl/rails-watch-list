class ListsController < ApplicationController

  def index
    @lists = List.all

  end

  def show
    @list = list.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      flash[:notice] = "List '#{@list.name}' has been successfully created"
      redirect_to @list # = cocktail_path(@cocktail)
    else
      # le flash affichera un bandeau rouge et un message d'erreur.
      flash[:alert] = "List '#{@list.name}' cannot be created. Check your inputs and try again."
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
