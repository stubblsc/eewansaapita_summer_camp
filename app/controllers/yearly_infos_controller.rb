class YearlyInfosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_yearly_info, only: [:show, :edit, :update, :destroy]

  helper_method :is_admin?

  # GET /yearly_infos
  # GET /yearly_infos.json
  def index
    if params[:year]
      @yearly_infos = YearlyInfo.where(year: params[:year])
    else
      @yearly_infos = YearlyInfo.all
    end

    respond_to do |format|
      format.html
      format.csv { send_data(@yearly_infos.to_csv(:except => [:created_at, :updated_at])) }
    end
  end

  # GET /yearly_infos/1
  # GET /yearly_infos/1.json
  def show
    @yearly_info = YearlyInfo.find(params[:id])
  end
  
  # GET /yearly_infos/new
  def new
    @yearly_info = YearlyInfo.new
    #@yearly_info = current_user.yearly_info.build
  end

  # GET /yearly_infos/1/edit
  def edit
    @yearly_info = YearlyInfo.find(params[:id])
  end

  # POST /yearly_infos
  # POST /yearly_infos.json
  def create
    @yearly_info = current_user.yearly_info.build(yearly_info_params)

    respond_to do |format|
      if @yearly_info.save
        format.html { redirect_to @yearly_info, notice: 'Yearly info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @yearly_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @yearly_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yearly_infos/1
  # PATCH/PUT /yearly_infos/1.json
  def update
    respond_to do |format|
      if @yearly_info.update(yearly_info_params)
        format.html { redirect_to @yearly_info, notice: 'Yearly info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @yearly_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yearly_infos/1
  # DELETE /yearly_infos/1.json
  def destroy
    @yearly_info.destroy
    respond_to do |format|
      format.html { redirect_to yearly_infos_url }
      format.json { head :no_content }
    end
  end

  def view_all_owned
    @yearly_infos = YearlyInfo.where(user_id: params[:user_id]).order(:year)

    respond_to do |format|
      format.html
      format.csv { send_data(@yearly_infos.to_csv(:except => [:created_at, :updated_at])) }
    end
  end

  def view_by_year
    @yearly_infos = YearlyInfo.where(year: params[:year])

    respond_to do |format|
      format.html
      format.csv { send_data(@yearly_infos.to_csv(:except => [:created_at, :updated_at])) }
    end
  end

  def view_by_role
    @yearly_infos = YearlyInfo.where(role: params[:role]).order(:year)

    respond_to do |format|
      format.html
      format.csv { send_data(@yearly_infos.to_csv(:except => [:created_at, :updated_at])) }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yearly_info
      @yearly_info = YearlyInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yearly_info_params
      params.require(:yearly_info).permit(:essay, :comments, :year, :role)
    end
end