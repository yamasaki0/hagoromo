class TagBookmarksController < ApplicationController
  before_action :set_tag_bookmark, only: %i[ show edit update destroy ]

  # GET /tag_bookmarks or /tag_bookmarks.json
  def index
    @tag_bookmarks = TagBookmark.all
  end

  # GET /tag_bookmarks/1 or /tag_bookmarks/1.json
  def show
  end

  # GET /tag_bookmarks/new
  def new
    @tag_bookmark = TagBookmark.new
  end

  # GET /tag_bookmarks/1/edit
  def edit
  end

  # POST /tag_bookmarks or /tag_bookmarks.json
  def create
    @tag_bookmark = TagBookmark.new(tag_bookmark_params)

    respond_to do |format|
      if @tag_bookmark.save
        format.html { redirect_to @tag_bookmark, notice: "Tag bookmark was successfully created." }
        format.json { render :show, status: :created, location: @tag_bookmark }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @tag_bookmark.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /tag_bookmarks/1 or /tag_bookmarks/1.json
  def update
    respond_to do |format|
      if @tag_bookmark.update(tag_bookmark_params)
        format.html { redirect_to @tag_bookmark, notice: "Tag bookmark was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @tag_bookmark }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @tag_bookmark.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /tag_bookmarks/1 or /tag_bookmarks/1.json
  def destroy
    @tag_bookmark.destroy!

    respond_to do |format|
      format.html { redirect_to tag_bookmarks_path, notice: "Tag bookmark was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_bookmark
      @tag_bookmark = TagBookmark.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def tag_bookmark_params
      params.expect(tag_bookmark: [ :user_id, :tag_id ])
    end
end
