require 'rails_helper'

RSpec.describe 'Designations Api',type: :request do
  # initialize test data
  let!(:designations) { create_list(:designation, 10) }
  let(:designation_id) { designations.first.id }
  # Test suite for GET /todos
  describe 'GET /designations' do
    # make HTTP get request before each example
    before { get '/designations' }

    it 'returns designations' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

    # Test suite for POST /designations
  describe 'POST /designations' do
    # valid payload
    let(:valid_attributes) { { name: 'Chief Technology Officer' } }

    context 'when the request is valid' do
      before { post '/designations', params: valid_attributes }

      it 'creates a designation' do
        expect(json['name']).to eq('Chief Technology Officer')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    # context 'when the request is invalid' do
    #   before { post '/designations', params: { } }

    #   it 'returns status code 422' do
    #     expect(response).to have_http_status(422)
    #   end

    #   it 'returns a validation failure message' do
    #     expect(response.body)
    #       .to match(/Validation failed: Created by can't be blankooo/)
    #   end
    # end
  end
end
