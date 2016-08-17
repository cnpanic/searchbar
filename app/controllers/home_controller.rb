class HomeController < ApplicationController

  def index
    @poppies = Poppy.search(params[:search],params[:age])
    @categories = Poppy.uniq.pluck(:kind)
    @age = Poppy.uniq.pluck(:age)
  end
  
end
