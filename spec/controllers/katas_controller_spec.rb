require "rails_helper"

RSpec.describe Api::V1::KatasController do

  describe "#index" do
    before { create(:kata) }

    it "returns a list of katas" do
      get :index
      response_data = JSON.parse(response.body)
      expect(response_data["data"].first["id"]).to eq Kata.last.id.to_s
    end
  end

end
