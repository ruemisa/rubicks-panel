class StudentsController < ApplicationController
  before_action :set_student, only: [:edit, :update, :show, :destroy]
  before_action :set_parent, only: [:new, :create, :destroy]
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, instructor: {except: [:destroy, :new, :create]}, headmaster: :all
  
  def index 
    @students = Student.all
  end

  def show

  end

  def new
    @student = Student.new
  end

  def create 
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
    p 'Student has been denied!'
    @student.destroy
    respond_to do |format|
      format.js 
      format.html { redirect_to root_path }
    end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @student.update(student_params) 
        p 'Updated'
        format.html { redirect_to @student, notice: 'Student bio successfully updated.' }
      else
        p 'Denied'
        format.html { render :edit }
      end
    end
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :education)
  end

  def set_student 
    @student = Student.friendly.find(params[:id])
  end

  def set_parent
    @course = Course.friendly.find(params[:course_id])
    @cohort = Cohort.friendly.find(params[:cohort_id])
  end

end
