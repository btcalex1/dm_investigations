class InvestigatesController < ApplicationController
  before_action :set_investigate, only: [:show, :edit, :update, :destroy]

  # GET /investigates
  # GET /investigates.json
  def index
    @investigates = Investigate.all
  end

  # GET /investigates/1
  # GET /investigates/1.json
  def show
  end

  # GET /investigates/new
  def new
    @investigate = Investigate.new
  end

  # GET /investigates/1/edit
  def edit
  end

  # POST /investigates
  # POST /investigates.json
  def create
    @investigate = Investigate.new(investigate_params)

    respond_to do |format|
      if @investigate.save
        format.html { redirect_to @investigate, notice: 'Investigate was successfully created.' }
        format.json { render :show, status: :created, location: @investigate }
      else
        format.html { render :new }
        format.json { render json: @investigate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investigates/1
  # PATCH/PUT /investigates/1.json
  def update
    respond_to do |format|
      if @investigate.update(investigate_params)
        format.html { redirect_to @investigate, notice: 'Investigate was successfully updated.' }
        format.json { render :show, status: :ok, location: @investigate }
      else
        format.html { render :edit }
        format.json { render json: @investigate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investigates/1
  # DELETE /investigates/1.json
  def destroy
    @investigate.destroy
    respond_to do |format|
      format.html { redirect_to investigates_url, notice: 'Investigate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investigate
      @investigate = Investigate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def investigate_params
      params.require(:investigate).permit(:customer_name, :date_of_flag, :transaction_amount, :notes, :customer_id_number, :open_or_closed)
    end
end
