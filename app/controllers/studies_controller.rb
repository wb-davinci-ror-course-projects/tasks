class StudiesController < ApplicationController
  before_action :set_study, only: [:show, :edit, :update, :destroy]

  # GET /studies
  # GET /studies.json
  def index
    @studies = Study.order(:priority)
  end

  # GET /studies/1
  # GET /studies/1.json
  def show
  end
  
  def practice1
    render :practice1, layout: false and return
  end
  
  def practice2
#     require 'open-uri'
#     require 'json'
#       url = JSON.parse("http://ats-rails-project.herokuapp.com.json").to_s
#       open(url) do |http|
#       @response = http.read
#       @response = @response[0]
#       end
    render :practice2, layout: false and return
  end
  
   def practice3
    render :practice3, layout: false and return
  end
  
  
  # GET /studies/new
  def new
    @study = Study.new
  end

  # GET /studies/1/edit
  def edit
  end

  # POST /studies
  # POST /studies.json
  def create
    @study = Study.new(study_params)

    respond_to do |format|
      if @study.save
        format.html { redirect_to @study, notice: 'Study was successfully created.' }
        format.json { render action: 'show', status: :created, location: @study }
      else
        format.html { render action: 'new' }
        format.json { render json: @study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studies/1
  # PATCH/PUT /studies/1.json
  def update
    respond_to do |format|
      if @study.update(study_params)
        format.html { redirect_to @study, notice: 'Study was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studies/1
  # DELETE /studies/1.json
  def destroy
    @study.destroy
    respond_to do |format|
      format.html { redirect_to studies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study
      @study = Study.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_params
      params.require(:study).permit(:name, :next_up, :done_for_today, :deadline, :priority, :category, :links, :material, :completed, :notes)
    end
end
