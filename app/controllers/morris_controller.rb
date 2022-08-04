class MorrisController < ApplicationController
  before_action :set_morri, only: %i[ show edit update destroy ]

  # GET /morris or /morris.json
  def index
    @morris = Morri.all
  end

  # GET /morris/1 or /morris/1.json
  def show
  end

  # GET /morris/new
  def new
    @morri = Morri.new
  end

  # GET /morris/1/edit
  def edit
  end

  # POST /morris or /morris.json
  def create
    @morri = Morri.new(morri_params)

    respond_to do |format|
      if @morri.save
        format.html { redirect_to morri_url(@morri), notice: "Morri was successfully created." }
        format.json { render :show, status: :created, location: @morri }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @morri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /morris/1 or /morris/1.json
  def update
    respond_to do |format|
      if @morri.update(morri_params)
        format.html { redirect_to morri_url(@morri), notice: "Morri was successfully updated." }
        format.json { render :show, status: :ok, location: @morri }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @morri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /morris/1 or /morris/1.json
  def destroy
    @morri.destroy

    respond_to do |format|
      format.html { redirect_to morris_url, notice: "Morri was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_morri
      @morri = Morri.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def morri_params
      params.require(:morri).permit(:men)
    end
end
