class TTypesController < ApplicationController
  before_action :set_t_type, only: [:show, :edit, :update, :destroy]

  # GET /t_types
  # GET /t_types.json
  def index
    @t_types = TType.all
  end

  # GET /t_types/1
  # GET /t_types/1.json
  def show
  end

  # GET /t_types/new
  def new
    @t_type = TType.new
  end

  # GET /t_types/1/edit
  def edit
  end

  # POST /t_types
  # POST /t_types.json
  def create
    @t_type = TType.new(t_type_params)

    respond_to do |format|
      if @t_type.save
        format.html { redirect_to @t_type, notice: 'T type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @t_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @t_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_types/1
  # PATCH/PUT /t_types/1.json
  def update
    respond_to do |format|
      if @t_type.update(t_type_params)
        format.html { redirect_to @t_type, notice: 'T type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @t_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_types/1
  # DELETE /t_types/1.json
  def destroy
    @t_type.destroy
    respond_to do |format|
      format.html { redirect_to t_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_type
      @t_type = TType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_type_params
      params.require(:t_type).permit(:name, :fields, :priority, :children, :relations, :extras)
    end
end
