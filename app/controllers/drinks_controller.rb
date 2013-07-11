class DrinksController < ApplicationController

  before_filter :require_login, :except => :show

  def index
    @drinks = Drink.all
  end

  def create
    @drink = Drink.new(params[:drink])
    if @drink.save!
      redirect_to drinks_url
    else
      render :new
    end
  end

  def destroy
    @drink = Drink.find(params[:id])
    @drink.destroy
    render :json => @drink
  end

  def new
    @ingredients = Ingredient.all
    @drink = Drink.new
  end

  def show
    @drink = Drink.random
  end
end
