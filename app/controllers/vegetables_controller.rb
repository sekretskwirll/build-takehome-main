class VegetablesController < ApplicationController
  before_action :set_vegetable, only: [:show, :update, :destroy]

  # GET /vegetables
  def index
    @vegetables = Vegetable.all

    render json: @vegetables
  end

  # GET /vegetables/1
  def show
    render json: @vegetable
  end

  # POST /vegetables
  def create
    @vegetable = Vegetable.new(vegetable_params)

    if @vegetable.save
      render json: @vegetable, status: :created, location: @vegetable
    else
      render json: @vegetable.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vegetables/1
  def update
    if @vegetable.update(vegetable_params)
      render json: @vegetable
    else
      render json: @vegetable.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vegetables/1
  def destroy
    @vegetable.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vegetable
      @vegetable = Vegetable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vegetable_params
      params.require(:vegetable).permit(:name)
    end
end
