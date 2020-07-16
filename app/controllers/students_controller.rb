class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def new_with_id
    @student = Student.find(params[:id])
    render 'new'
  end

  def create 
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to new_with_id_path(@student)
  end

end
