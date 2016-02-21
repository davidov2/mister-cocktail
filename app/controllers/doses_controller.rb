class DosesController < ApplicationController

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_param)
    @dose.cocktail_id = params[:cocktail_id]
    @dose.save
    redirect_to cocktails_path
  end


def edit
  @dose = Dose.find(params[:id])
  @cocktail = Cocktail.find(params[:cocktail_id])

end

def update
  @dose = Dose.find(params[:id])
  @dose.update(dose_param)
    redirect_to cocktails_path
  end



  private

  def dose_param
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
