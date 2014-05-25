class FitPostsController < ApplicationController
  before_action :set_fit_post, only: [:show, :edit, :update, :destroy]

  # GET /fit_posts
  # GET /fit_posts.json
  def index
    @fit_posts = FitPost.order(:date).reverse
  end

  # GET /fit_posts/1
  # GET /fit_posts/1.json
  def show
  end

  # GET /fit_posts/new
  def new
    @fit_post = FitPost.new
  end

  # GET /fit_posts/1/edit
  def edit
  end

  # POST /fit_posts
  # POST /fit_posts.json
  def create
    @fit_post = FitPost.new(fit_post_params)

    respond_to do |format|
      if @fit_post.save
        format.html { redirect_to @fit_post, notice: 'Fit post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fit_post }
      else
        format.html { render action: 'new' }
        format.json { render json: @fit_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fit_posts/1
  # PATCH/PUT /fit_posts/1.json
  def update
    respond_to do |format|
      if @fit_post.update(fit_post_params)
        format.html { redirect_to @fit_post, notice: 'Fit post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fit_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fit_posts/1
  # DELETE /fit_posts/1.json
  def destroy
    @fit_post.destroy
    respond_to do |format|
      format.html { redirect_to fit_posts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fit_post
      @fit_post = FitPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fit_post_params
      params.require(:fit_post).permit(:date, :weight, :focus, :breakfast, :brk_cals, :lunch, :lunch_cals, :dinner, :dinner_cals, :snacks, :snack_cals, :cal_track_complete, :water_extract_64oz, :exercise, :accomplishment, :model_day, :energy, :notes)
    end
end
