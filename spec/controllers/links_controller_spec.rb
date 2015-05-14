require "spec_helper"
require "rails_helper"

describe LinksController do
  describe "GET index" do
    it "renders index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET new" do
    it "renders new template and Home" do
      get :new
      expect(response).to render_template("new")
    end
  end
end