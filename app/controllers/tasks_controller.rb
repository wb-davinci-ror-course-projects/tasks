class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
#     if params[:search].present?
#       LocationFetcher.fetch(params[:search])
#       first_word = params[:search].split(/[\s,]+/).first
#       @locations = Location.search(first_word).order(updated_at: :desc)
#       if @locations.empty?
#         flash[:notice] = "\'#{params[:search].capitalize}\' queued for import.
#           Please refresh the page if the new location doesn't appear below right away."
#       end
#       redirect_to locations_path
#     else
#       @locations = Location.order(updated_at: :desc).paginate(:page => params[:page])
#     end
    @tasks = Task.order(:deadline).page(params[:page]).per_page(6)
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end
  
  def notes
    @task = Task.find(params[:id])
  end
  
  def archive
    @tasks = Task.all.page(params[:page]).per_page(10)
  end


  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render action: 'show', status: :created, location: @task }
      else
        format.html { render action: 'new' }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:done_for_today, :name, :deadline, :completed, :date_completed, :priority, :notes, :links, :category, :sub_category, :contact, :location, :comm_info, :last_worked_on)
    end
end
