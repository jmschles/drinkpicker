class DrinksController < ApplicationController

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

  def show
    @drink = Drink.random
  end
end
