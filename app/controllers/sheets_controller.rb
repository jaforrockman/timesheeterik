class SheetsController < ApplicationController
  before_action :set_sheet, only: [:show, :edit, :update, :destroy]

  # GET /sheets
  # GET /sheets.json
  def index
    @sheets = Sheet.all

     respond_to do |format|
     format.html {
        render :action => 'index'
        }
     format.xml {
     render :xml => @sheets.to_xml
    }
    end
  end

  # GET /sheets/1
  # GET /sheets/1.json
  def show
  end

  # GET /sheets/new
  def new
    @sheet = Sheet.new
  end

  # GET /sheets/1/edit
  def edit
  end

  # POST /sheets
  # POST /sheets.json
  def create
    @sheet = Sheet.new(sheet_params)
    
      if @sheet.save

        redirect_to '/sheets/new', notice: 'Your Sheet has been saved successfully' 
       # format.html { render :new, notice: 'Sheet was successfully created.' }
        
      else
         render :new 
       
      end
  end
 

  # PATCH/PUT /sheets/1
  # PATCH/PUT /sheets/1.json
  def update
    respond_to do |format|
      if @sheet.update(sheet_params)
        format.html { redirect_to @sheet, notice: 'Sheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @sheet }
      else
        format.html { render :edit }
        format.json { render json: @sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheets/1
  # DELETE /sheets/1.json
  def destroy
    @sheet.destroy
    respond_to do |format|
      format.html { redirect_to sheets_url, notice: 'Sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sheet
      @sheet = Sheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sheet_params
      params.require(:sheet).permit(:date, :client_id, :activity_id, :omschrijving, :uur, :minuten, :antal, :opmerking_intern, :client_name, :activity_name, :uren_type)
    end
end
