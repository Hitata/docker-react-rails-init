require 'rails_helper'

RSpec.describe 'Skills API', type: :request do
  # initialize test data 
  let!(:skills) { create_list(:skill, 10) }
  let(:skill_id) { skills.first.id }

  # Test suite for GET /skills
  describe 'GET /skills' do
    # make HTTP get request before each example
    before { get '/skills' }

    it 'returns skills' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
  # Test suite for GET /skills/:id
  describe 'GET /skills/:id' do
    before { get "/skills/#{skill_id}" }

    context 'when the record exists' do
      it 'returns the skill' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(skill_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:skill_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Skill with 'id'=#{skill_id}/)
      end
    end
  end
  
  # Test suite for POST /skills
  describe 'POST /skills' do
    # valid payload
    let(:valid_attributes) { { name_en: 'Developer', name_ja: 'デベーロパ' } }

    context 'when the request is valid' do
      before { post '/skills', params: valid_attributes }

      it 'creates a skill' do
        expect(json['name_en']).to eq('Developer')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/skills', params: { name_en: 'Sales' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Name ja can't be blank/)
      end
    end
  end

  # Test suite for PUT /skills/:id
  describe 'PUT /skills/:id' do
    let(:valid_attributes) { { name_en: 'Management' } }

    context 'when the record exists' do
      before { put "/skills/#{skill_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /skills/:id
  describe 'DELETE /skills/:id' do
    before { delete "/skills/#{skill_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end