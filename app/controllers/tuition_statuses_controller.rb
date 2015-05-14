class TuitionStatusesController < ApplicationController
  before_action :set_tuition_status, only: [:show, :edit, :update, :destroy]

  # GET /tuition_statuses
  # GET /tuition_statuses.json
  def index
    @tuition_statuses = TuitionStatus.all
  end

  # GET /tuition_statuses/1
  # GET /tuition_statuses/1.json
  def show
  end

  # GET /tuition_statuses/new
  def new
    @tuition_status = TuitionStatus.new
  end

  # GET /tuition_statuses/1/edit
  def edit
  end

  # POST /tuition_statuses
  # POST /tuition_statuses.json
  def create
    @tuition_status = TuitionStatus.new(tuition_status_params)

    respond_to do |format|
      if @tuition_status.save
        format.html { redirect_to @tuition_status, notice: 'Tuition status was successfully created.' }
        format.json { render :show, status: :created, location: @tuition_status }
      else
        format.html { render :new }
        format.json { render json: @tuition_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuition_statuses/1
  # PATCH/PUT /tuition_statuses/1.json
  def update
    respond_to do |format|
      if @tuition_status.update(tuition_status_params)
        format.html { redirect_to @tuition_status, notice: 'Tuition status was successfully updated.' }
        format.json { render :show, status: :ok, location: @tuition_status }
      else
        format.html { render :edit }
        format.json { render json: @tuition_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuition_statuses/1
  # DELETE /tuition_statuses/1.json
  def destroy
    @tuition_status.destroy
    respond_to do |format|
      format.html { redirect_to tuition_statuses_url, notice: 'Tuition status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuition_status
      @tuition_status = TuitionStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tuition_status_params
      params.require(:tuition_status).permit(:id, :status)
    end
end
