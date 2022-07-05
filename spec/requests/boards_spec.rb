require 'rails_helper'

RSpec.describe "Boards", type: :request do

  let!(:board) { create(:board) }
  let(:board_id) { board.id }
  describe "GET /boards" do
    before { get '/boards'}

    it 'returns boards' do
      puts board.ancestry
      expect(json).not_to be_empty
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

   describe 'GET /boards/:id' do
    
    before { get "/boards/#{board_id}" }
    
    context 'when the record exists' do
      let(:board_id) { 1 }
      
      it 'returns the board' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(board_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:board_id) { 100 }
      it 'returns status code 404' do                 # 404 or 422?
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Board with 'id'=100/)
      end
    end
  end

  describe 'POST /boards' do

    let(:valid_attributes) { { name: 'CBSE', logo: 'cbse.png', description: 'Central Board of Secondary Education' } }

    context 'when the request is valid' do
      before { post '/boards', params: valid_attributes }

      it 'creates a board' do
        expect(json['name']).to eq('CBSE')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/boards', params: { name: 'CBSE', description: 'Central Board of Secondary Education' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Logo can't be blank/)
      end
    end
  end

  describe 'PUT /boards/:id' do
    let(:valid_attributes) { { name: 'ICSE' } }

    context 'when the record exists' do
      before { put "/boards/#{board_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  describe 'DELETE /boards/:id' do
    before { delete "/boards/#{board_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end

end
