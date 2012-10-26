class BlogpostsController < ApplicationController
  # GET /blogposts
  # GET /blogposts.json
  def index
    @blogposts = Blogpost.published

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blogposts }
    end
  end

  # GET /blogposts/1
  # GET /blogposts/1.json
  def show
    @blogpost = Blogpost.published.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blogpost }
    end
  end
end
