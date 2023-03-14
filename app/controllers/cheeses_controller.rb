class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  #Solution 1
  # def show
  #   show = Cheese.where("id=?", params[:id])
  #   render json:show
  # end  

  #solution 2

  def show
    cheese = Cheese.find_by(id: params[:id])
    render json:cheese
  end
end
