class ServicemenController < ApplicationController
  before_action :set_serviceman, only: [:show, :edit, :update, :destroy]

  # GET /servicemen
  # GET /servicemen.json
  def index
    @servicemen = Serviceman.all
  end

  # GET /servicemen/1
  # GET /servicemen/1.json
  def show
  end

  # GET /servicemen/new
  def new
    @serviceman = Serviceman.new
  end

  # GET /servicemen/1/edit
  def edit
  end

  # POST /servicemen
  # POST /servicemen.json
  def create
    @serviceman = Serviceman.new(serviceman_params)

    respond_to do |format|
      if @serviceman.save
        format.html { redirect_to @serviceman, notice: 'Serviceman was successfully created.' }
        format.json { render :show, status: :created, location: @serviceman }
      else
        format.html { render :new }
        format.json { render json: @serviceman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servicemen/1
  # PATCH/PUT /servicemen/1.json
  def update
    respond_to do |format|
      if @serviceman.update(serviceman_params)
        format.html { redirect_to @serviceman, notice: 'Serviceman was successfully updated.' }
        format.json { render :show, status: :ok, location: @serviceman }
      else
        format.html { render :edit }
        format.json { render json: @serviceman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicemen/1
  # DELETE /servicemen/1.json
  def destroy
    @serviceman.destroy
    respond_to do |format|
      format.html { redirect_to servicemen_url, notice: 'Serviceman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serviceman
      @serviceman = Serviceman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serviceman_params
      params.require(:serviceman).permit(:status)
    end
end
