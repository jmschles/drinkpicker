class IngredientsController < ApplicationController

  before_filter :require_login

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(params[:ingredient])
    if @ingredient.save!
      redirect_to root_url
    else
      render :new
    end
  end

end
