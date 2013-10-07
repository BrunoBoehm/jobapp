class HeadersController < ApplicationController
  before_action :set_header, only: [:show, :edit, :update, :destroy]

  # GET /headers
  # GET /headers.json
  def index
    @company = Company.find(params[:company_id])
    @headers = @company.headers.all
  end

  # GET /headers/1
  # GET /headers/1.json
  def show
  end

  # GET /headers/new
  def new
    @company = Company.find(params[:company_id])
    @header = @company.headers.build
  end

  # GET /headers/1/edit
  def edit
  end

  # POST /headers
  # POST /headers.json
  def create
    @company = Company.find(params[:company_id])
    @header = @company.headers.build(header_params)

    respond_to do |format|
      if @header.save
        format.html { redirect_to @company, notice: 'Header was successfully created.' }
        format.json { render action: 'show', status: :created, location: @header }
      else
        format.html { render action: 'new' }
        format.json { render json: @header.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /headers/1
  # PATCH/PUT /headers/1.json
  def update
    respond_to do |format|
      if @header.update(header_params)
        format.html { redirect_to @company, notice: 'Header was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @header.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /headers/1
  # DELETE /headers/1.json
  def destroy
    @header.destroy
    respond_to do |format|
      format.html { redirect_to company_headers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_header
      @company = Company.find(params[:company_id])
      @header = @company.headers.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def header_params
      params.require(:header).permit(:title, :caption, :company_id, :image)
    end
end
