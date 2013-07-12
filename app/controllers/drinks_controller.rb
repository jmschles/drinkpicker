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

  def edit
    @ingredients = Ingredient.all
    @drink = Drink.find(params[:id])
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

  def update
    @drink = Drink.find(params[:id])
    @drink.components.destroy_all
    if @drink.update_attributes(params[:drink])
      redirect_to drinks_url
    else
      render :edit
    end
  end
end
