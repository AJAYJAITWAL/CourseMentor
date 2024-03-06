require 'rails_helper'

RSpec.describe Api::CoursesController, type: :controller do
  describe "GET index" do
    it "returns a successful response" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "POST create" do
    it "creates a new course" do
      expect {
        post :create, params: { course: FactoryBot.attributes_for(:course) }
      }.to change(Course, :count).by(1)
    end
  end
end
