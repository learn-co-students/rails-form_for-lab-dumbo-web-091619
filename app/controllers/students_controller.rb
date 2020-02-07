class StudentsController < ApplicationController
  def create
    @student = Student.create(params.require(:student).permit(:first_name, :lastname))
    redirect_to @student
  end

  def new
    @student = Student.new
  end
  
  def edit
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

end
