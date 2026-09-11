class RepostsController < ApplicationController
  before_action :set_repost, only: %i[ show edit update destroy ]

  # GET /reposts or /reposts.json
  def index
    @reposts = Repost.all
  end

  # GET /reposts/1 or /reposts/1.json
  def show
  end

  # GET /reposts/new
  def new
    @repost = Repost.new
  end

  # GET /reposts/1/edit
  def edit
  end

  # POST /reposts or /reposts.json
  def create
    @repost = Repost.new(repost_params)

    respond_to do |format|
      if @repost.save
        format.html { redirect_to @repost, notice: "Repost was successfully created." }
        format.json { render :show, status: :created, location: @repost }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @repost.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /reposts/1 or /reposts/1.json
  def update
    respond_to do |format|
      if @repost.update(repost_params)
        format.html { redirect_to @repost, notice: "Repost was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @repost }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @repost.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /reposts/1 or /reposts/1.json
  def destroy
    @repost.destroy!

    respond_to do |format|
      format.html { redirect_to reposts_path, notice: "Repost was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_repost
    @repost = Repost.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def repost_params
    params.expect(repost: [:user_id, :post_id])
  end
end
