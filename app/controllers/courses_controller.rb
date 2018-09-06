class CoursesController < ApplicationController
  before_action :set_course, only: [:edit, :update, :show, :destroy]
  # before_action authenticate_user!
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, instructor: {except: [:destroy, :new, :create, :update, :edit]}, headmaster: :all

  def index
    @courses = Course.all
  end

  def show

  end

  def new
    @course = Course.new
  end

  def create 
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        p "Course Added"
        format.html { redirect_to courses_path, notice: 'Added a new course!' }
      else
        p "Denied"
        format.html { render :new }
      end
    end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @course.update(course_params) 
        p 'Updated'
        # >>>
        # TODO: FIND A WAY TO REDIRECT TO SHOW PATH FROM HERE.
        # <<<
        format.html { redirect_to courses_path, notice: 'Course successfully updated.' }
      else
        p 'Denied'
        format.html { render :edit }
      end
    end
  end

  def destroy
    @course.destroy
    p 'Removed Course'
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course removed!' }
    end
  end


  private 

  def course_params
    params.require(:course).permit(:title, :details, :total_hours)
  end
    
  def set_course 
    @course = Course.friendly.find(params[:id])
  end

end
