class SkeletonsController < ApplicationController
  # GET /skeletons
  # GET /skeletons.xml
  
  before_filter :authenticate, :except => [:index, :show]
  
  def index
    @skeletons = Skeleton.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @skeletons }
    end
  end

  # GET /skeletons/1
  # GET /skeletons/1.xml
  def show
    @skeleton = Skeleton.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @skeleton }
    end
  end

  # GET /skeletons/new
  # GET /skeletons/new.xml
  def new
    @skeleton = Skeleton.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @skeleton }
    end
  end

  # GET /skeletons/1/edit
  def edit
    @skeleton = Skeleton.find(params[:id])
  end

  # POST /skeletons
  # POST /skeletons.xml
  def create
    @skeleton = Skeleton.new(params[:skeleton])

    respond_to do |format|
      if @skeleton.save
        format.html { redirect_to(@skeleton, :notice => 'Skeleton was successfully created.') }
        format.xml  { render :xml => @skeleton, :status => :created, :location => @skeleton }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @skeleton.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /skeletons/1
  # PUT /skeletons/1.xml
  def update
    @skeleton = Skeleton.find(params[:id])

    respond_to do |format|
      if @skeleton.update_attributes(params[:skeleton])
        format.html { redirect_to(@skeleton, :notice => 'Skeleton was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @skeleton.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /skeletons/1
  # DELETE /skeletons/1.xml
  def destroy
    @skeleton = Skeleton.find(params[:id])
    @skeleton.destroy

    respond_to do |format|
      format.html { redirect_to(skeletons_url) }
      format.xml  { head :ok }
    end
  end


 private
 
  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "admin"
    end
  end

end
