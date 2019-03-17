class DesignationsController < ApplicationController
  before_action :set_designation, only: [:show, :update, :destroy]
# GET /designations
  def index
    @designations = Designation.all
    render json: @designations, status: status
  end

  # POST /designations
  def create
    @designation = Designation.create!(designation_params)
    json_response(@designation, :created)
  end


  # GET /designations/:id
  def show
    json_response(@designation)
  end

  # PUT /designations/:id
  def update
    @designation.update(designation_params)
    head :no_content
  end

  # DELETE /designations/:id
  def destroy
    @designation.destroy
    head :no_content
  end

  private

  def designation_params
    # whitelist params
    params.permit(:name)
  end

  def set_designation
  	@designation = Designation.find(params[:id])
  end
end
