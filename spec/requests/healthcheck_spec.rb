require 'rails_helper'

RSpec.describe "Healthchecks", type: :request do
  describe "GET /_healthcheck" do
    it "returns status code 200" do
      get _healthcheck_path

      expect(response).to have_http_status(:ok)

      res = JSON.parse(response.body)

      expect(res["message"]).to eq "ok"
    end
  end
end
