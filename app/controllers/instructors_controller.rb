class InstructorsController < ApplicationController
  before_action :set_instructor, only: [:edit, :update, :show, :destroy]
  before_action :set_parent, only: [:new, :create, :destroy]
  access all: [:index], user: {except: [:destroy, :new, :create, :update, :edit, :show]}, instructor: {except: [:destroy, :new, :create, :update, :edit, :show]}, headmaster: :all
  
  def index 
    @instructors = Instructor.all
  end

  def show

  end

  def new
    @instructor = Instructor.new
  end

  def create 
    @instructor = Instructor.new(instructor_params)
    @instructor.course_id = @course.id
    @instructor.cohort_id = @cohort.id 

    if @instructor.save
      p 'EUREKA'
      redirect_to cohort_show_path(@cohort.slug)
    else
      p 'Denied'
      render 'new'
    end
  end

  def destroy
    p 'Instructor has been denied!'
    @instructor.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to cohort_show_path(@cohort.slug) }
    end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @instructor.update(instructor_params) 
        p 'Updated'
        format.html { redirect_to @instructor, notice: 'Instructor bio successfully updated.' }
      else
        p 'Denied'
        format.html { render :edit }
      end
    end
  end


  private

  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name, :age, :education, :salary)
  end

  def set_instructor 
    @instructor = Instructor.friendly.find(params[:id])
  end

  def set_parent
    @course = Course.friendly.find(params[:course_id])
    @cohort = Cohort.friendly.find(params[:cohort_id])
  end
end
