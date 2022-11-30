class RestaurantPizzasController < ApplicationController
 wrap_parameters false

 def create
  rp = RestaurantPizza.create!(rp_params)
  render json: RestaurantPizza.last.pizza, except: [:created_at, :updated_at], status: :accepted
 rescue ActiveRecord::RecordInvalid => e
  render json: { error: e.record.errors.full_messages }, status: :unprocessable_entity
 end

 private

 def rp_params
  params.permit(:pizza_id, :restaurant_id, :price)
 end

end

