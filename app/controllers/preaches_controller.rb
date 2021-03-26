class PreachesController < ApplicationController
  before_action :set_preach, only: %i[ show edit update destroy ]
  

  # GET /preaches or /preaches.json
  def index
    @preaches = Preach.all
  end

  

  # GET /preaches/1 or /preaches/1.json
  def show
  end

  # GET /preaches/new
  def new
    @preach = Preach.new
  end

  # GET /preaches/1/edit
  def edit
  end

  # POST /preaches or /preaches.json
  def create
    @preach = Preach.new(preach_params)

    respond_to do |format|
      if @preach.save
        format.html { redirect_to @preach, notice: "Preach was successfully created." }
        format.json { render :show, status: :created, location: @preach }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @preach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preaches/1 or /preaches/1.json
  def update
    respond_to do |format|
      if @preach.update(preach_params)
        format.html { redirect_to @preach, notice: "Preach was successfully updated." }
        format.json { render :show, status: :ok, location: @preach }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @preach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preaches/1 or /preaches/1.json
  def destroy
    @preach.destroy
    respond_to do |format|
      format.html { redirect_to preaches_url, notice: "Preach was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preach
      @preach = Preach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def preach_params
      params.require(:preach).permit(:title, :subject, :publication, :status, :progress_id, :files=>[])
    end
end
