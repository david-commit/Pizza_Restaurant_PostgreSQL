class RestaurantsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

 def index
  r = Restaurant.all
  render json: r, except: [:created_at, :updated_at], status: :ok
 end

 def show
  r = find_r
  render json: r, except: [:created_at, :updated_at], status: :ok
 end

 def destroy
  r = find_r
  r.destroy
  render json: {}, status: :no_content
 end

 private

 def find_r
  Restaurant.find(params[:id])
 end

 def render_not_found_response
  render json: { "error": "Restaurant Not Found" }, status: :not_found
 end
end

# ====== NOTES
# > include: :pizzas, except: [:created_at, :updated_at] > Seraializer