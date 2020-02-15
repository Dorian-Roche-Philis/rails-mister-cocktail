class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(params_cocktail)
    if @cocktail.save

      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.where(cocktail_id: '(params[:id]')
  end
  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to root_path
  end

  private

  def params_cocktail
    params.require(:cocktail).permit(:name, :photo)
  end
end
