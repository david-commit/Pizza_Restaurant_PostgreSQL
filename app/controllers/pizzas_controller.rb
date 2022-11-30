class PizzasController < ApplicationController

 def index
  pizza = Pizza.all
  render json: pizza, each_serializer: PizzaSerializer
 end

end
