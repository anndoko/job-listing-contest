class Admin::CompaniesController < ApplicationController
  before_action :authenticate_user!
  before_action :require_is_admin
  layout "admin"

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def index
    @companies = Company.all.paginate(:page => params[:page], :per_page => 10)
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)

    if @company.save
      redirect_to admin_companies_path
    else
      render :new
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])

    if @company.update(company_params)
      redirect_to admin_companies_path
    else
      render :edit
    end
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy

    redirect_to admin_companies_path
  end

  def company_params
    params.require(:company).permit(:title, :image, :location)
  end


end
