class JobsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy, :star, :unstar]

   before_action :validate_search_key, only: [:search]

  def index
      @jobs = Job.published.recent.paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @job = Job.find(params[:id])

    # google map
    @hash = Gmaps4rails.build_markers(@job) do |job, marker|
      marker.lat job.latitude
      marker.lng job.longitude
    end
  end

  def new
    @job = Job.new
    @companies = Company.all.map { |c| [c.title, c.id] }
  end

  def create
    @job = Job.new(job_params)
    @job.company_id = params[:company_id]

    if @job.save
      redirect_to jobs_path
    else
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
    @companies = Company.all.map { |c| [c.title, c.id] }
  end

  def update
    @job = Job.find(params[:id])
    @job.company_id = params[:company_id]

    if @job.update(job_params)
      redirect_to jobs_path
    else
      render :edit
    end
  end

  def destroy
    @job = Job.find(params[:id])

    @job.destroy

    redirect_to jobs_path
  end

  # search
  def search
    if @query_string.present?
      search_result = Job.published.ransack(@search_criteria).result(:distinct => true)
      @jobs = search_result.recent.paginate(:page => params[:page], :per_page => 5 )
    end
  end

  # star & unstar
  def star
    @job = Job.find(params[:id])

    if !current_user.is_follower_of?(@job)
      current_user.star!(@job)
    end

    redirect_to :back
  end

  def unstar
    @job = Job.find(params[:id])

    if current_user.is_follower_of?(@job)
      current_user.unstar!(@job)
    end

    redirect_to :back
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :wage_upper_bound, :wage_lower_bound, :contact_email, :is_hidden, :title, :description, :wage_lower_bound, :wage_upper_bound, :contact_email, :is_hidden, :city, :category, :company_id)
  end

  protected
  def validate_search_key
    @query_string = params[:q]
    if params[:q].present?
      @search_criteria =  {
        title_or_company_or_city_cont: @query_string
      }
    end
  end

  def search_criteria(query_string)
    { :title_cont => query_string }
  end

end
