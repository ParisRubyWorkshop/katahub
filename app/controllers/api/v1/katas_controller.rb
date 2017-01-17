class Api::V1::KatasController < ApplicationController

  def index
    @katas = Kata.all
    render json: @katas
  end

  def show
    @kata = Kata.find(params[:id])
    conn = Faraday.new(:url => 'https://api.github.com/repos/') do |faraday|
      faraday.request  :url_encoded
      faraday.adapter  Faraday.default_adapter
      faraday.headers["Accept"] = "application/vnd.github.v3.raw"
    end
    response = conn.get("ParisRubyWorkshop/#{@kata.github_repo_name}/readme")
    @kata.readme = response.body.force_encoding("UTF-8")
    render json: @kata
  end
end
