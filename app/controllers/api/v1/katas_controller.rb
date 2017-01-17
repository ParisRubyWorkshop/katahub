class Api::V1::KatasController < ApplicationController

  def index
    @katas = Kata.all
    render json: @katas
  end
end
