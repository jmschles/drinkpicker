class IngredientsController < ApplicationController

  before_filter :require_login

  def create
    @ingredient = Ingredient.new(params[:ingredient])
    if @ingredient.save!
      redirect_to root_url
    else
      render :new
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    render :json => @ingredient
  end

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

end
