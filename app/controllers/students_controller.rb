class StudentsController < ApplicationController
  
  before_action :set_student, only: [:show]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    #@student = Student.create(student_params)
    session[:form_params] = student_params.inspect
    redirect_to new_student_path
  end

  private

    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end

    def set_student
      @student = Student.find(params[:id])
    end

end
