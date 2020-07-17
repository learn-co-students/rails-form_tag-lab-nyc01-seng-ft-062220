class StudentsController < ApplicationController
  @@student = Student.new
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  def new
    @student = @@student 
  end

  def create
     Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
     @@student = Student.new(first_name: params[:student][:first_name], last_name: params[:student][:last_name])

    redirect_to new_student_path
  end

end
