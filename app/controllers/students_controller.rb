class StudentsController < ApplicationController
  before_action :set_student, only: [:edit, :update, :show, :destroy]

  def index 
    @students = Student.all
  end

  def show

  end

  def new
    @course = Course.friendly.find(params[:course_id])
    @cohort = Cohort.friendly.find(params[:cohort_id])
    @student = Student.new
  end

  def create 
    @course = Course.friendly.find(params[:course_id])
    @cohort = Cohort.friendly.find(params[:cohort_id])
    @student = Student.new(student_params)
    @student.course_id = @course.id
    @student.cohort_id = @cohort.id 

    if @student.save
      p 'EUREKA'
      redirect_to cohort_show_path(@cohort.slug)
    else
      p 'Denied'
      render 'new'
    end
  end

  def destroy
    @student.destroy
    p 'Student has been denied!'
    respond_to do |format|
      format.html { redirect_to cohort_url, notice: "#{@student.first_name} has been denied" }
    end
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :education)
  end

  def set_student 
    @student = Student.friendly.find(params[:id])
  end

end
