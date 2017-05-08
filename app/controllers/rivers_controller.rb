class RiversController < ApplicationController

  def river_params
    return params.require(:river).permit([:name, :country])
  end

  def index
    rivers = River.all
    render :json => rivers
  end

  def show
    river = River.find(params[:id])
    render :json => river
  end

  def create
    river = River.create(river_params)
    render json: river
  end

  def update
     river = River.find(params[:id])

      if river.update_attributes(river_params)
        render json: river
      else 
        render json: { status: :update_failed }
      end

  end 

    def destroy 
        river = River.find(params[:id])

        if river.destroy!
          render json: { status: :success }
        else
          render json: { status: :delete_failed }
        end

    end

  end