class CohortsController < ApplicationController
  before_action :set_cohort, only: [:edit, :update, :show, :destroy]
  before_action :set_parent, only: [:new, :create, :destroy]
  # before_action authenticate_user!
  # access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, instructor: {except: [:destroy, :new, :create, :update]}, headmaster: :all

  def index
    @cohorts = Cohort.all
  end

  def show

  end

  def new 
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.new(cohort_params)
    @cohort.course_id = @course.id

    if @cohort.save
      p "Cohort Added"
      notice = 'Cohort Added!'
      redirect_to @cohort
    else
        p "Denied"
        render 'new'
    end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @cohort.update(cohort_params) 
        p 'Updated'
        # >>>
        # TODO: FIND A WAY TO REDIRECT TO SHOW PATH FROM HERE.
        # <<<
        format.html { redirect_to @cohort, notice: 'Cohort successfully updated.' }
      else
        p 'Denied'
        format.html { render :edit }
      end
    end
  end

  # >>>
  # TODO: FIX DESTROY FUNCTIONALITY FOR COHORTS FUCK THIS SHIT
  # <<<
  
  def destroy
    @cohort.destroy
    p 'Removed Cohort'
    respond_to do |format|
      format.html { redirect_to course_show_path(@course.slug) , notice: 'Cohort removed!' }
    end
  end

  private 

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date)
  end

  def set_cohort
    @cohort = Cohort.friendly.find(params[:id])
  end

  def set_parent
    @course = Course.friendly.find(params[:course_id])
  end
end
