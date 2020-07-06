require 'redis'
require 'json'

class FeedViewsController < ApplicationController
  before_action :set_feed_view, only: [:show, :edit, :update, :destroy]

  # GET /feed_views
  # GET /feed_views.json
  def index
    redis = Redis.new(host: "localhost")

    @feed_views = FeedView.all
    @feed_view_list = redis.lrange("feeds", 0, -1)
    list = redis.lrange("feeds", 0, -1)
    @count = list.size

  end

  # GET /feed_views/1
  # GET /feed_views/1.json
  def show
  end

  # GET /feed_views/new
  def new
    @feed_view = FeedView.new
  end

  # GET /feed_views/1/edit
  def edit
  end

  # POST /feed_views
  # POST /feed_views.json
  def create
    #conexion con redis
    redis = Redis.new(host: "localhost")

    #redis.set('key', 3)

    #hacerlo con el lpush

    #feed_view = FeedView.new(feed_view_params)


    redis.rpush('feeds', feed_view_params.to_json);

    #  format.html { redirect_to @feed_view, notice: 'Feed view was successfully created.' }

    # respond_to do |format|
    #   format.html { redirect_to @feed_view, notice: 'Feed view was successfully created.' }
    # end

    # respond_to do |format|
    #   if @feed_view.save
    #     format.html { redirect_to @feed_view, notice: 'Feed view was successfully created.' }
    #     format.json { render :show, status: :created, location: @feed_view }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @feed_view.errors, status: :unprocessable_entity }
    #   end
    #end
  end

  # PATCH/PUT /feed_views/1
  # PATCH/PUT /feed_views/1.json
  def update
    respond_to do |format|
      if @feed_view.update(feed_view_params)
        format.html { redirect_to @feed_view, notice: 'Feed view was successfully updated.' }
        format.json { render :show, status: :ok, location: @feed_view }
      else
        format.html { render :edit }
        format.json { render json: @feed_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feed_views/1
  # DELETE /feed_views/1.json
  def destroy
    @feed_view.destroy
    respond_to do |format|
      format.html { redirect_to feed_views_url, notice: 'Feed view was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed_view
      @feed_view = FeedView.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def feed_view_params
      params.require(:feed_view).permit(:user, :comitts, :issues, :pulls, :versions, :gists, :date)
    end
end
