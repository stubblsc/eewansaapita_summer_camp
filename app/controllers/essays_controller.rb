class EssaysController < ApplicationController
  before_action :authenticate_user!
  before_action :set_essay, only: [:show, :edit, :update, :destroy]

  helper_method :is_admin?, :owns_essay?

  # GET /essays
  # GET /essays.json
  def index
    if params[:year]
      @essays = Essay.where(year: params[:year])
    else
      @essays = Essay.all
    end

    respond_to do |format|
      format.html
      format.csv { send_data(@essays.to_csv(:except => [:created_at, :updated_at])) }
    end
  end

  # GET /essays/1
  # GET /essays/1.json
  def show
    @essay = Essay.find(params[:id])
  end

  # GET /essays/new
  def new
    @essay = current_user.essay.build
  end

  # GET /essays/1/edit
  def edit
  end

  # POST /essays
  # POST /essays.json
  def create
    @essay = current_user.essay.build(essay_params)
    @essay.year = (Time.zone.now.year)
    
    respond_to do |format|
      if @essay.save
        format.html { redirect_to @essay, notice: 'Essay was successfully created.' }
        format.json { render action: 'show', status: :created, location: @essay }
      else
        format.html { render action: 'new' }
        format.json { render json: @essay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /essays/1
  # PATCH/PUT /essays/1.json
  def update
    respond_to do |format|
      if @essay.update(essay_params)
        format.html { redirect_to @essay, notice: 'Essay was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @essay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /essays/1
  # DELETE /essays/1.json
  def destroy
    @essay.destroy
    respond_to do |format|
      format.html { redirect_to essays_url }
      format.json { head :no_content }
    end
  end

  def view_all_owned
    @essays = Essay.where(user_id: params[:user_id])

    respond_to do |format|
      format.html
      format.csv { send_data(@essays.to_csv(:except => [:created_at, :updated_at])) }
    end
  end

  def view_by_year
    @essays = Essay.where(year: params[:year])

    respond_to do |format|
      format.html
      format.csv { send_data(@essays.to_csv(:except => [:created_at, :updated_at])) }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_essay
      @essay = Essay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def essay_params
      params.require(:essay).permit(:essay)
    end
end
