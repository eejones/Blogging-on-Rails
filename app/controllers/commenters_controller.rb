class CommentersController < ApplicationController
  http_basic_authenticate_with :name => "eej", :password => "guest", :except => [:index]


  # GET /commenters
  # GET /commenters.json
  def index
    @commenters = Commenter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @commenters }
    end
  end

  # GET /commenters/1
  # GET /commenters/1.json
  def show
    @commenter = Commenter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json=> @commenter }
    end

  end

  def new
    @commenter = Commenter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json=> @commenter }
    end
  end


  def edit
    @commenter = Commenter.find(params[:id])
  end

  def create
    @commenter = Commenter.new(params[:commenter])

    respond_to do |format|
      if @commenter.save
        format.html { redirect_to @commenter, :notice => 'Commenter was successfully created.' }
        format.json { render :json=> @commenter, :status=> :created, :location=> @commenter }
      else
        format.html { render :action=> "new" }
        format.json { render :json=> @commenter.errors, :status=> :unprocessable_entity }
      end
    end
  end

  def update
    @commenter = Commenter.find(params[:id])

    respond_to do |format|
      if @commenter.update_attributes(params[:commenter])
        format.html { redirect_to(@commenter, :notice=> 'Commenter was successfully updated.') }
        format.json { head :no_content }
      else
        format.html { render :action=> "edit" }
        format.json { render :json=> @commenter.errors, :status=> :unprocessable_entity }
      end
    end
  end

  def destroy
    @commenter = Commenter.find(params[:id])
    @commenter.destroy

    respond_to do |format|
      format.html { redirect_to commenters_url }
      format.json { head :no_content }
    end
  end
end
