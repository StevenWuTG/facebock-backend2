class Api::V1::WallsController < ApplicationController
    def index
        allWalls = Wall.all
        render json: allWalls, except: [:created_at, :updated_at]
    end

    def create
        wall = Wall.create!(wall_params)
        if wall.valid?
            render json: wall,  except: [:created_at, :updated_at]
        else
            render json: {errors: wall.errors} 
        end 
    end

    def show
        wall = Wall.find(params[:id])
        render json: wall, except: [:created_at, :updated_at]
    end

    def update
        wall = Wall.find(params[:id])
        if (wall.update!(post_params))
            render json: wall
        else
            render json: {errors: wall.errors} 
        end 
    end 

    def destroy
        allWall = Wall.all
        wall = Wall.find(params[:id])
        wall.destroy
        render json: allWall
    end

    private

    def wall_params
        params.permit(:user)
    end
end
