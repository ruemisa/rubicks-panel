class PagesController < ApplicationController
  
  def home
  end

  def about
  end

  def contact
  end

  def dashboard
    @courses = Course.all
    @cohorts = Cohort.all 
    @instructors = Instructor.all
    @students = Student.all
  end

end
