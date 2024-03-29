class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :update, :destroy]

  # GET /services
  def index
    @services = Service.where.not(user_id: params[:except_user])

    render json: ServiceSerializer.new(@services, { fields: { service: [:skill_name, :user_name, :user_id, :category_name, :price, :description, :comment] } })
  end

  # GET /services/1
  def show
    render json: ServiceSerializer.new(@service, { fields: { service: [:skill, :user, :category, :price, :description, :comment] } })
  end

  # POST /services
  def create
    @service = Service.new(service_params)

    if @service.save
      render json: @service, status: :created, location: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /services/1
  def update
    if @service.update(service_params)
      render json: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /services/1
  def destroy
    @service.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_params
      params.permit(
        :description,
        :price,
        :category_id,
        :user_id,
        :except_user
        )
    end
end
