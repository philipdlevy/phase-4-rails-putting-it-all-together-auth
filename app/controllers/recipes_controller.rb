require 'pry'

class RecipesController < ApplicationController
    

    def index
        # binding.pry
        user = User.find_by(id: session[:user_id])
        recipes = Recipe.all
        # binding.pry
        if user 
            render json: recipes, status: :created
        else
            render json: {errors: ["Unauthorized"]}, status: :unauthorized
        end
    end

    def create
        user = User.find_by(id: session[:user_id])
        # binding.pry
        if user
            recipe = user.recipes.create(recipe_params)
            if recipe.valid?
                render json: recipe, status: :created
            else
                render json: {errors: ["Unprocessable Entity"]}, status: :unprocessable_entity
            end
        else
            render json: {errors: ["Unauthorized"]}, status: :unauthorized
        end
    end

    private

    def recipe_params
        params.permit(:title, :instructions, :minutes_to_complete)
    end
end
