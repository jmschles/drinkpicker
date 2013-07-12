class IngredientsController < ApplicationController

  before_filter :require_login

  def create
    @ingredient = Ingredient.new(params[:ingredient])
    if @ingredient.save!
      redirect_to new_ingredient_url
    else
      render :new
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    render :json => @ingredient
  end

  def index
    @ingredients = Ingredient.all.sort_by { |i| i.name }
  end

  def new
    @ingredient = Ingredient.new
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.update_attributes(params[:ingredient])
      redirect_to ingredients_url
    else
      render :edit
    end
  end

end
