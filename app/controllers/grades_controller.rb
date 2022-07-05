class GradesController < ApplicationController
    # before_action :set_board
    before_action :set_grade
    # before_action :set_board_grade, only: [:show, :update, :destroy]
  
    def index
      #json_response(@board.grades)
      json_response(@grades)
    end
  
    def show
      json_response(@grade)
    end
  
    def create
      @board.grades.create!(grade_params)
      json_response(@board, :created)
    end
  
    def update
      @grade.update(grade_params)
      head :no_content
    end
  
    def destroy
      @grade.destroy
      head :no_content
    end
  
    private
  
    def grade_params
      params.permit(:id, :name, :board_id)
    end
  
    # def set_board
    #   @board = Board.find(params[:board_id])
    # end
    
    def set_grade
        @grade = Grade.find(params[:id])
    end
  
    # def set_board_grade
    #   @grade = @board.grades.find_by!(id: params[:id]) if @board
    # end  
  end
  