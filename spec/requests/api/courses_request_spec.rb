require 'rails_helper'

RSpec.describe 'Courses API', type: :request do
  describe 'POST /api/courses' do
    context 'with valid parameters' do
      let(:valid_params) do
        {
          "course": {
            "name": "Mathematics",
            "tutors_attributes": [
              { "name": "John Doe", "bio": "I have a Master's degree in Mathematics and have been tutoring for over 5 years. I specialize in calculus and algebra." },
              { "name": "Jane Smith", "bio": "I'm a passionate physics enthusiast with a background in engineering. I enjoy making complex concepts understandable for students." }
            ]
          }
        }        
      end

      it 'creates a new course' do
        post '/api/courses', params: valid_params
        expect(response).to have_http_status(:created)
      end
    end
  end

  describe 'GET /api/courses' do
    it 'returns a list of courses' do
      FactoryBot.create(:course, name: 'Mathematics')
      FactoryBot.create(:course, name: 'Physics')

      get '/api/courses'
      expect(response).to have_http_status(:success)
    end
  end
end
