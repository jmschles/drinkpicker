class ComponentsController < ApplicationController

  def create
    @component = Component.new(params[:component])
    @component.save!
  end

end
