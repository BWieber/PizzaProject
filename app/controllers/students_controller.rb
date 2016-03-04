class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      flash[:notice] = "Student was saved successfully."
      redirect_to student_index
    else
      flash[:error] = "There was an error. Please try again."
      render :new
    end

  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def student_params
    params.require(:student).permit(:name, :class)
  end

end
