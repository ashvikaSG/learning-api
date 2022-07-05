require 'rails_helper'

RSpec.describe "Grades", type: :request do


    let!(:grade) { create(:grade) }
    let(:grade_id) { grade.id }
    describe "GET /grades" do
        before { get '/grades'}

        it 'returns grades' do
            puts grade.id #displayed
            puts grade.parent_id #not displayed
            expect(json).not_to be_empty
        end

        # it 'returns status code 200' do
        #     expect(response).to have_http_status(200)
        # end
    end
#     Below is not relevant since resources aren't nested, I had them initially when I did shallow nesting

#     let!(:board) { create(:board) }
#     let!(:grades) { create_list(:grade, 3, board_id: board.id) }
#     let(:board_id) { board.id }
#     let(:id) { grades.first.id }
#     let(:grade) { create(:grade) }

#      # Test suite for GET /boards/:board_id/grades
#     describe 'GET /boards/:board_id/grades' do
#         before { get "/boards/#{board_id}/grades" }

#         context 'when grade exists' do
#             it 'returns status code 404' do
#                 #puts grade.id
#                 puts grade.board_id
#                 expect(response).to have_http_status(404)       ##200
#             end

#             it 'returns all board grades' do
#                 expect(json.size).to eq(3)
#             end
#         end

#         context 'when board does not exist' do
#             let(:board_id) { 0 }

#             it 'returns status code 404' do
#                 expect(response).to have_http_status(404)
#             end

#             it 'returns a not found message' do
#                 expect(response.body).to match(/Couldn't find Board with 'id'=0/)
#             end
#         end
#     end

#     # Test suite for GET /boards/:board_id/grades/:id
#     describe 'GET /boards/:board_id/grades/:id' do
#         before { get "/boards/#{board_id}/grades/#{id}" }

#         context 'when board grade exists' do
#             it 'returns status code 200' do
#                 expect(response).to have_http_status(200)
#             end

#             it 'returns the grade' do
#                 expect(json['id']).to eq(id)
#             end
#         end

#         context 'when board grade does not exist' do
#         let(:id) { 0 }

#             it 'returns status code 404' do
#                 expect(response).to have_http_status(404)
#             end

#             it 'returns a not found message' do
#                 expect(response.message).to match(/Not Found/)
#             end
#         end
#     end

#      # Test suite for PUT /boards/:board_id/grades
#     describe 'POST /boards/:board_id/grades' do
#         let(:valid_attributes) { { name: '12', board_id: nil } }

#         context 'when request attributes are valid' do
#             before { post "/boards/#{board_id}/grades", params: valid_attributes }

#             it 'returns status code 201' do
#                 expect(response).to have_http_status(201)
#             end
#         end

#         context 'when an invalid request' do
#             before { post "/boards/#{board_id}/grades", params: {} }

#             it 'returns status code 422' do
#                 expect(response).to have_http_status(422)
#             end

#             it 'returns a failure message' do
#                 expect(response.body).to match(/Validation failed: Name can't be blank/)
#             end
#         end
#     end

#     # Test suite for PUT /boards/:board_id/grades/:id
#     describe 'PUT /boards/:board_id/grades/:id' do
#         let(:valid_attributes) { { name: '12' } }

#         before { put "/boards/#{board_id}/grades/#{id}", params: valid_attributes }

#         context 'when grade exists' do
#             it 'returns status code 204' do
#                 expect(response).to have_http_status(204)
#             end

#             it 'updates the grade' do
#                 updated_grade = Grade.find(id)
#                 expect(updated_grade.name).to match(/12/)
#             end
#         end

#         context 'when the grade does not exist' do
#             let(:id) { 0 }

#             it 'returns status code 404' do
#                 expect(response).to have_http_status(404)
#             end

#             it 'returns a not found message' do
#                 expect(response.message).to match(/Not Found/)
#             end
#         end
#     end

#    # Test suite for DELETE /boards/:id
#     describe 'DELETE /boards/:id' do
#         before { delete "/boards/#{board_id}/grades/#{id}" }

#         it 'returns status code 204' do
#             expect(response).to have_http_status(204)
#         end
#     end
end
