class Api::V1::KatasController < ApplicationController

  def index
    @katas = Kata.all
    render json: @katas
  end

  def show
    @kata = Kata.find(params[:id])
    render json: @kata
  end
end
